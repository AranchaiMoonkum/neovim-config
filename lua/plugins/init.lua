return {
    -- ux/ui
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        config = function() require "plugins.ui.indentation" end,
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
    { "xzbdmw/colorful-menu.nvim" },

    -- language
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function() require "plugins.lang.treesitter" end,
    },
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
        dependencies = "saghen/blink.cmp",
        config = function() require "plugins.lang.lsp" end,
    },
    {
        "saghen/blink.cmp",
        dependencies = { "L3MON4D3/LuaSnip", version = "v2.*" },
        version = "*",
        config = function() require "plugins.lang.completion" end,
    },

    -- themes
    {
        "ferdinandrau/carbide.nvim",
        lazy = false,
        priority = 1000,
        config = function() require "plugins.themes.carbide" end,
    },

    -- extras
    {
        "vyfor/cord.nvim",
        build = ":Cord update",
        config = function() require "plugins.ui.cord" end,
    },
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = true,
    },
}
