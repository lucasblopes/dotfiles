return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "bash",
                "powershell",
                "python",
                "go",
                "c",
                "yaml",
                "json",
                "javascript",
                "typescript",
                "html",
                "css",
                "gitignore",
                "sql",
                "vim",
                "lua",
                "markdown",
                "markdown_inline",
                "latex",
                "html",
                "css",
            },
            query_linter = {
                enable = true,
                use_virtual_text = true,
                lint_events = { "BufWrite", "CursorHold" },
            },
        },
    },
}
