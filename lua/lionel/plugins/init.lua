return {
  "nvim-lua/plenary.nvim", -- lua functions that many plugins use
  "christoomey/vim-tmux-navigator", -- tmux & split window navigation
},
  require("telescope").setup({
    defaults = {
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--only-matching",
      },
      file_ignore_patterns = {}, -- Here, we're not adding any ignore patterns to ensure we only search in the cwd
      path_display = { "truncate" },
      cwd = vim.fn.getcwd(), -- This ensures Telescope starts from the current working directory
    },
    pickers = {
      find_files = {
        find_command = { "rg", "--files", "--hidden", "-g", "!.git" },
        cwd = vim.fn.getcwd(), -- Again, specifying cwd
      },
    },
  })
