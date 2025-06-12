return {
  'akinsho/toggleterm.nvim',
  version = "*",
  config = function()
    require('toggleterm').setup {
      size = 70, -- Tamanho do terminal (em linhas para split horizontal)
      open_mapping = [[<C-t>]], -- Atalho para abrir/fechar (Ctrl+t)
      hide_numbers = true, -- Oculta os números dos terminais
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2, -- Intensidade da sombra ao fundo
      start_in_insert = true, -- Inicia no modo insert
      insert_mappings = true, -- Mapeamentos no modo insert
      persist_size = true, -- Mantém o tamanho ao reabrir
      direction = 'vertical', -- 'horizontal', 'vertical', 'float'
      close_on_exit = true, -- Fecha ao sair do shell
      shell = vim.o.shell, -- Usa o shell padrão do sistema
      float_opts = {
        border = 'curved', -- Estilo da borda do terminal flutuante
        winblend = 0,
        highlights = {
          border = 'Normal',
          background = 'Normal',
        },
      },
    }

    -- Atalho para abrir/fechar o terminal
    vim.keymap.set('n', '<C-t>', '<cmd>ToggleTerm<CR>', { desc = 'Abrir/Fechar terminal' })
    vim.keymap.set('t', '<C-t>', '<cmd>ToggleTerm<CR>', { desc = 'Abrir/Fechar terminal (modo terminal)' })
  end,
}
