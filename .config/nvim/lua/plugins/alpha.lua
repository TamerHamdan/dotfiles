return {
    {
        "goolord/alpha-nvim",
        event = "VimEnter",
        enabled = true,
        init = false,
        opts = function()
            local dashboard = require("alpha.themes.dashboard")

            -- Create date and time section
            local datetime = {
                type = "text",
                val = function()
                    return os.date(" %a, %b %d, %y ") -- for time  %I:%M %p
                end,
                opts = {
                    position = "center",
                    hl = "AlphaDateTime",
                }
            }

            -- stylua: ignore
            dashboard.section.buttons.val = {
                dashboard.button("n", " " .. " New file", [[<cmd> ene <BAR> startinsert <cr>]]),
                dashboard.button("f", " " .. " Find file", "<cmd> Telescope find_files <cr>"),
                dashboard.button("r", " " .. " Recent files", "<cmd>lua require('telescope.builtin').oldfiles()<cr>"),
                dashboard.button("t", " " .. " Find text", [[<cmd> Telescope live_grep <cr>]]),
                dashboard.button("c", " " .. " Config",
                    "<cmd>lua require('telescope.builtin').find_files({cwd = vim.fn.stdpath('config')})<cr>"),
                dashboard.button("l", "󰒲 " .. " Lazy", "<cmd> Lazy <cr>"),
                dashboard.button("q", " " .. " Quit", "<cmd> qa <cr>"),
            }
            vim.cmd("hi AlphaHeader guifg=#FEBA17")
            vim.cmd("hi AlphaDateTime guifg=#61AFEF")
            dashboard.section.header.opts.hl = "AlphaHeader"

            -- Add datetime section to layout
            dashboard.section.datetime = datetime
            dashboard.opts.layout = {
                { type = "padding", val = 3 },
                dashboard.section.header,
                { type = "padding", val = 2 },
                dashboard.section.datetime,
                { type = "padding", val = 2 },
                dashboard.section.buttons,
                dashboard.section.footer,
            }
            return dashboard
        end,
        config = function(_, dashboard)
            -- close Lazy and re-open when the dashboard is ready
            if vim.o.filetype == "lazy" then
                vim.cmd.close()
                vim.api.nvim_create_autocmd("User", {
                    once = true,
                    pattern = "AlphaReady",
                    callback = function()
                        require("lazy").show()
                    end,
                })
            end

            require("alpha").setup(dashboard.opts)
            vim.api.nvim_create_autocmd("User", {
                once = true,
                pattern = "LazyVimStarted",
                callback = function()
                    local stats = require("lazy").stats()
                    local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
                    dashboard.section.footer.val = stats.loaded
                        .. "/"
                        .. stats.count
                        .. " plugins in "
                        .. ms
                        .. "ms"
                    pcall(vim.cmd.AlphaRedraw)
                end,
            })
        end,
    },
}
