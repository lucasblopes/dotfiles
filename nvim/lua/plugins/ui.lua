return {
    {
        "akinsho/bufferline.nvim",
        -- enabled = false,
        opts = {
            options = {
                always_show_bufferline = true,
                themable = true,
            },
        },
    },
    {
        "nvim-lualine/lualine.nvim",
        opts = {
            sections = {
                lualine_y = {
                    { "searchcount", padding = { left = 1, right = 0 }, separator = " " },
                    { "selectioncount", padding = { left = 1, right = 0 }, separator = " " },
                    { "location", padding = { left = 0, right = 1 } },
                },
            },
            -- winbar = {
            -- 	lualine_a = { 'buffers' },
            -- 	lualine_b = {},
            -- 	lualine_c = {},
            -- 	lualine_x = {},
            -- 	lualine_y = {},
            -- 	lualine_z = { 'tabs' },
            -- },
        },
    },
    {
        "folke/noice.nvim",
        opts = {
            presets = {
                lsp_doc_border = true,
            },
            lsp = {
                hover = { enabled = true },
                signature = { enabled = true },
            },
            smart_move = { enabled = true },
            routes = {
                {
                    filter = {
                        event = "notify",
                        any = {
                            { find = "textDocument/codeLens is not supported" },
                            { find = "Searching in Files" },
                        },
                    },
                    opts = { skip = true },
                },
                {
                    filter = {
                        event = "msg_show",
                        any = {
                            { find = "%d+L, %d+B" },
                            { find = "; after #%d+" },
                            { find = "; before #%d+" },
                        },
                    },
                    view = "mini",
                },
            },
        },
    },
}
