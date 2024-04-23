return {
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
      'jfpedroza/neotest-elixir',
    },
    opts = {
      status = { virtual_text = true },
      output = { open_on_run = true },
      icons = {
        running_animated = { '◐', '◓', '◑', '◒' },
        failed = '✗',
        passed = '✔',
        running = '↻',
        skipped = '⊘',
        unknown = '⭘',
      },
    },
    config = function(_, opts)
      opts.adapters = {
        require 'neotest-elixir',
      }

      require('neotest').setup(opts)
    end,
    -- stylua: ignore
    keys = {
      { "<leader>tt", function() require("neotest").run.run(vim.fn.expand("%")) end, desc = "[T]est Run File" },
      { "<leader>tT", function() require("neotest").run.run(vim.uv.cwd()) end, desc = "[T]est Run All Test Files" },
      { "<leader>tr", function() require("neotest").run.run() end, desc = "[T]est [r]un Nearest" },
      { "<leader>tl", function() require("neotest").run.run_last() end, desc = "[T]est Run [l]ast" },
      { "<leader>ts", function() require("neotest").summary.toggle() end, desc = "[T]est [s]ummary Toggle" },
      { "<leader>to", function() require("neotest").output.open({ enter = true, auto_close = true }) end, desc = "[T]est Show [o]utput" },
      { "<leader>tO", function() require("neotest").output_panel.toggle() end, desc = "[T]est Toggle [O]utput Panel" },
      { "<leader>tS", function() require("neotest").run.stop() end, desc = "[T]est [S]top" },
    },
  },
}
