return {
    {
        "nvim-treesitter/nvim-treesitter",
        tag = "v0.9.1",
        opts = {
            ensure_installed = {
                "bash",
                "python",
                "go",
                "c",
                "yaml",
                "javascript",
                "docker",
                "typescript",
                "html",
                "css",
                "gitignore",
                "json",
                "sql",
                "vim",
                "lua",
            },
            query_linter = {
                enable = true,
                use_virtual_text = true,
                lint_events = { "BufWrite", "CursorHold" },
            },
        },
    },
}
