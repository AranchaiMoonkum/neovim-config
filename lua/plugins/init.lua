return {
    -- ux/ui
    {
        "folke/snacks.nvim",
        config = function() require "plugins.ui.snacks" end,
    },
    {
        "nvim-telescope/telescope.nvim",
        branch = "0.1.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            {
                "nvim-telescope/telescope-fzf-native.nvim",
                build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
            },
        },
        config = function() require "plugins.ui.telescope" end,
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function() require "gitsigns".setup {} end,
    },

    -- language
    {
        "folke/lazydev.nvim",
        ft = "lua", -- only load on lua files
        opts = {
            library = {
                { path = "${3rd}/luv/library", words = { "vim%.uv" } },
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
        config = function() require "plugins.lang.lsp" end,
    },

    -- themes
    {
        "ferdinandrau/carbide.nvim",
        lazy = false,
        priority = 1000,
        config = function() require "plugins.themes.carbide" end,
    },
}
