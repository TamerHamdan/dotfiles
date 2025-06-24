local blink = require("blink.cmp")

return {
  cmd = { "clangd" },
  filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
  root_markers = {
    'compile_commands.json',
    'compile_flags.txt',
    '.clangd',
    '.clang-tidy',
    '.clang-format',
    'CMakeLists.txt',
    'Makefile',
    'configure.ac',
    'configure.in',
    'config.h.in',
    'meson.build',
    '.git',
  },
  init_options = {
    clangdFileStatus = true,
    usePlaceholders = true,
    completeUnimported = true,
    semanticHighlighting = true,
  },
  settings = {
    clangd = {
      InlayHints = {
        Designators = true,
        Enabled = true,
        ParameterNames = true,
        DeducedTypes = true,
      },
      fallbackFlags = { "-std=c++17" },
    },
  },
  capabilities = vim.tbl_deep_extend(
    "force",
    {},
    vim.lsp.protocol.make_client_capabilities(),
    blink.get_lsp_capabilities(),
    {
      textDocument = {
        completion = {
          editsNearCursor = true,
        },
      },
      offsetEncoding = { "utf-16" },
      fileOperations = {
        didRename = true,
        willRename = true,
      },
    }
  ),
}
