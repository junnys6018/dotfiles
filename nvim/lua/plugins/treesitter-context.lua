return {
    "nvim-treesitter/nvim-treesitter-context",
    config = function()
        vim.api.nvim_set_hl(0, "TreesitterContextBottom", { link = "CursorLine" })
        vim.api.nvim_set_hl(0, "TreesitterContext", { link = "CursorLine" })
        vim.api.nvim_set_hl(0, "TreesitterContextLineNumber", { link = "CursorLine" })
    end,
}
