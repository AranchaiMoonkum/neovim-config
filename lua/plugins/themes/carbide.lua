require "carbide".setup {
    style = { transparent = false },
    plugins = {
        ["telescope.nvim"] = false,
    },
}

require "carbide".apply("dark")
