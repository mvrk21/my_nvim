return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    keys = {
      -- Override the default keymap to open the parent directory
      { '-', '<CMD>Oil<CR>', desc = 'Open parent directory', mode = 'n' },
      -- Open Oil in a floating window
      { '<leader>oF', '<CMD>Oil --float<CR>', desc = 'Open Oil in floating window', mode = 'n' },
    },
    -- Optional dependencies
    -- dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
  },
}
