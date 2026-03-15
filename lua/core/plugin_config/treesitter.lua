-- nvim-treesitter v1.x+ (after major refactor)
-- The old nvim-treesitter.configs module no longer exists
require('nvim-treesitter').setup()

-- Enable treesitter highlighting and indentation per filetype
vim.api.nvim_create_autocmd("FileType", {
  callback = function()
    local ok = pcall(vim.treesitter.start)
    if ok then
      vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end
  end,
})

-- Install parsers on startup (runs async, won't block)
vim.api.nvim_create_autocmd("VimEnter", {
  once = true,
  callback = function()
    require('nvim-treesitter.install').install({
      "c", "lua", "python", "typescript", "vim", "vimdoc", "html"
    })
  end,
})
