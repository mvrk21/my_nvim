return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('harpoon'):setup()
  end,
  keys = {
    -- Add current file to harpoon list
    {
      '<leader>ha',
      function()
        require('harpoon'):list():add()
      end,
      desc = 'Harpoon Add File',
    },
    {
      '<leader>hx',
      function()
        require('harpoon'):list():clear()
      end,
      desc = 'Harpoon clears list',
    },
    {
      '<leader>hrr',
      function()
        require('harpoon'):list():remove()
      end,
      desc = 'Harpoon clears list',
    },
    -- Toggle quick menu to view and select files
    {
      '<leader>ht',
      function()
        require('harpoon').ui:toggle_quick_menu(require('harpoon'):list())
      end,
      desc = 'Harpoon Toggle Quick Menu',
    },
    -- Navigate to specific harpoon marks (e.g., first, second, etc.)
    {
      '<leader>h1',
      function()
        require('harpoon'):list():select(1)
      end,
      desc = 'Harpoon to File 1',
    },
    {
      '<leader>h2',
      function()
        require('harpoon'):list():select(2)
      end,
      desc = 'Harpoon to File 2',
    },
    -- Navigate to next/previous harpoon mark
    {
      '<leader>hn',
      function()
        require('harpoon'):list():next()
      end,
      desc = 'Harpoon Next',
    },
    {
      '<leader>hp',
      function()
        require('harpoon'):list():prev()
      end,
      desc = 'Harpoon Previous',
    },
  },
}
