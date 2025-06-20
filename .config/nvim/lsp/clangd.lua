local blink = require("blink.cmp")

require('lspconfig').clangd.setup {
  cmd = { "clangd" },
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
  init_options = {
    clangdFileStatus = true,
    usePlaceholders = true,
    completeUnimported = true,
    semanticHighlighting = true,
  },
  settings = {
    clangd = {
      inlayHints = {
        enabled = true,
      },
      fallbackFlags = { "-std=c++17" },
    },
  },
  capabilities = blink.get_lsp_capabilities(),
}
