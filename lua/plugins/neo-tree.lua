return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          visible = true, -- Garante que as opções de filtro abaixo sejam aplicadas
          hide_dotfiles = false, -- ESTA É A OPÇÃO PRINCIPAL para mostrar arquivos como .gitignore
          hide_gitignored = false, -- Opcional: também mostra arquivos ignorados pelo git
        }
      },
      -- Você pode adicionar outras configurações aqui no futuro
      -- window = {
      --   mappings = {
      --     ["h"] = "close_node",
      --     ["l"] = "open",
      --   }
      -- }
    })

    vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})
  end
}
