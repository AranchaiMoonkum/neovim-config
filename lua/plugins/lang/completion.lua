require "blink.cmp".setup {
    keymap = { preset = "default" },
    appearance = {
        use_nvim_cmp_as_default = true,
        nerd_font_variant = "mono",
    },
    completion = {
        menu = {
            scrollbar = false,
            draw = {
                columns = {
                    { "kind_icon", gap = 1 },
                    { "label",     gap = 1 },
                },
            },
        },
    },
    snippets = { preset = "luasnip" },
    sources = {
        default = { "lazydev", "lsp", "path", "snippets", "buffer" },
        providers = {
            lazydev = {
                name = "LazyDev",
                module = "lazydev.integrations.blink",
                score_offset = 100,
            },
        },
        cmdline = {},
    },
    signature = {
        enabled = true,
        window = { scrollbar = false },
    },
}
