return {
  { -- Automatically add "end" in Ruby, Elixir, etc
    'RRethy/nvim-treesitter-endwise',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    main = 'nvim-treesitter.configs',
    opts = {
      endwise = {
        enable = true,
      },
    },
  },
}
