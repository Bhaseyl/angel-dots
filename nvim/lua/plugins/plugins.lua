return {
  {
    "typicode/bg.nvim",
    lazy = false,
  },
  {
    "everviolet/nvim",
    name = "evergarden",
    priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
    opts = {
      theme = {
        variant = "winter", -- 'winter'|'fall'|'spring'|'summer'
        accent = "green",
      },
      editor = {
        transparent_background = false,
        sign = { color = "none" },
        float = {
          color = "mantle",
          solid_border = false,
        },
        completion = {
          color = "surface0",
        },
      },
    },
  },
  --{
  --  "ellisonleao/gruvbox.nvim",
  --  priority = 1000,
  --  config = true,
  --},
  -- {
  --   "saeedvaziry/wal.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  -- },
  --{ "nvim-mini/mini.base16", version = false, priority = 1000 },
  --{ "LazyVim/LazyVim", opts = {
  --  colorscheme = "minicyan",
  --} },
  --{
  --  "vague-theme/vague.nvim",
  --  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  --  priority = 1000, -- make sure to load this before all the other plugins
  --  config = function()
  --    -- NOTE: you do not need to call setup if you don't want to.
  --    require("vague").setup({
  --      -- optional configuration here
  --    })
  --    vim.cmd("colorscheme vague")
  --  end,
  --},
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "evergarden",
    },
  },
  {
    "nvimdev/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require("dashboard").setup({
        -- config
      })
    end,
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
  },
  {
    "gbprod/yanky.nvim",
    lazy = true,
  },
  {
    "folke/snacks.nvim",
    opts = {
      lazygit = {
        configure = false, -- Disable snacks lazygit theme integration
      },
    },
  },
  {
    "xiyaowong/transparent.nvim",
    lazy = false,
  },
}
