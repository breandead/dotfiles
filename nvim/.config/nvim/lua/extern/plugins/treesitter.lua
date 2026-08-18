local function setup_treesitter()
    require("telescope").setup({
      defaults = {
        preview = {
          treesitter = false,
        },
      },
    })

    require("nvim-treesitter").install({'c', 'cpp', 'rust'})
end

return {
      "nvim-treesitter/nvim-treesitter",
      branch = 'main',
      config = setup_treesitter,
      lazy = false,
      build = ":TSUpdate"
}
