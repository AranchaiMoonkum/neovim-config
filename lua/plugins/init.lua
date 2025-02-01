return {
    {
        "lewis6991/gitsigns.nvim",
        config = function() require "gitsigns".setup {} end,
    },

    -- themes
    {
        "ferdinandrau/carbide.nvim",
        lazy = false,
        priority = 1000,
        config = function() require "plugins.themes.carbide" end,
    },
}
