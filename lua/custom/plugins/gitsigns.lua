return { -- Adds git related signs to the gutter, as well as utilities for managing changes
  'lewis6991/gitsigns.nvim',
  config = function()
    local gitsigns = require 'gitsigns'
    gitsigns.setup {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changdelete = { text = '~' },
      },
      signs_staged_enable = false,
      current_line_blame = true,
      current_line_blame_opts = {
        virt_text_pos = 'right_align',
      },
    }
    vim.keymap.set('n', '<leader>ghp', gitsigns.preview_hunk, { desc = '[G]it [H]unk [P]review' })
    vim.keymap.set('n', '<leader>ghs', gitsigns.stage_hunk, { desc = '[G]it [H]unk [S]tage' })
    vim.keymap.set('n', '<leader>ghr', gitsigns.reset_hunk, { desc = '[G]it [H]unk [R]eset' })
    vim.keymap.set('n', '<leader>gb', gitsigns.toggle_current_line_blame, { desc = '[G]it toggle [B]lame' })
    vim.keymap.set('n', '<leader>gd', gitsigns.diffthis, { desc = '[G]it [d]iff' })
    vim.keymap.set('n', '<leader>gD', function()
      gitsigns.diffthis '~'
    end, { desc = '[G]it [D]iff head' })
    vim.keymap.set('n', ']c', function()
      gitsigns.nav_hunk 'next'
    end, { desc = 'Next hunk' })
    vim.keymap.set('n', '[c', function()
      gitsigns.nav_hunk 'prev'
    end, { desc = 'Previous hunk' })
  end,
}
