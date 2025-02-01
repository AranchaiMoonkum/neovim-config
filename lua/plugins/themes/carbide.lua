require "carbide".setup {
    style = {
        transparent = false,
        gutter = "solid",
    },
    plugins = {
        ["telescope.nvim"] = false,
    },
}

require "carbide".apply("dark")
