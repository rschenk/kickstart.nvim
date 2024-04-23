return {
  {
    'pappasam/nvim-repl',
    init = function()
      vim.g['repl_filetype_commands'] = {
        javascript = 'node',
        python = 'ipython --no-autoindent',
        elixir = 'iex -S mix',
      }

      vim.g.repl_split = 'bottom'
      vim.g.repl_height = 20
    end,
    keys = {
      { '<leader>rt', '<cmd>ReplToggle<cr>', desc = '[R]EPL [T]oggle' },
      { '<leader>rr', '<plug>ReplSendLine<cr>', desc = '[R]EPL Run [L]ine' },
      { '<leader>r', '<plug>ReplSendVisual<cr>', mode = 'x', desc = '[R]EPL Run' },
    },
  },
}
