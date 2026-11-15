# vaporwave.nvim

Vaporwave/synthwave theme for Neovim

## Installation

- lazy.nvim:

  ```lua
  return {
    "xxyrnn/vaporwave.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd("colorscheme vaporwave")
    end
  }
  ```
