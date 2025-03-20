return {
  'NeogitOrg/neogit',
  dependencies = {
    'nvim-lua/plenary.nvim', -- required
    'sindrets/diffview.nvim', -- optional - Diff integration

    'nvim-telescope/telescope.nvim',
  },
  opts = {
    kind = 'floating',
  },
  config = function()
    local neogit = require 'neogit'
    vim.keymap.set('n', '<leader>gn', function()
      neogit.open { kind = 'floating' }
    end, { desc = '[G]it [N]eogit' })
  end,
}
