return {
  'saghen/blink.cmp',
  -- optional: provides snippets for the snippet source
  dependencies = { 'rafamadriz/friendly-snippets' },

  version = '1.*',
  opts = {
    keymap = { preset = 'default' },

    appearance = {
      nerd_font_variant = 'mono'
    },
    fuzzy = { implementation = "prefer_rust_with_warning" }
  },
  opts_extend = { "sources.default" }
}
