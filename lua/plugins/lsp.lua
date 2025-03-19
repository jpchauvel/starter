return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      diagnostics = {
        virtual_text = false,
      },
      servers = {
        pyright = {
          mason = false,
          autostart = false,
        },
        basedpyright = {
          settings = {
            basedpyright = {
              disableOrganizeImports = false,
              analysis = {
                typeCheckingMode = "standard",
              },
            },
          },
        },
      },
    },
  },
}
