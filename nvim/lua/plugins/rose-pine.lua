return {

  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      styles = {
        bold = true,
        italic = true,
        transparency = true,
      },
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
