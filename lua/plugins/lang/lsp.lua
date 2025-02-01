local lspconfig = require "lspconfig"
local lspconfig_util = require "lspconfig.util"

local capabilities = require "blink.cmp".get_lsp_capabilities()
local lsp_flags = { debounce_text_changes = 100 }

local default = {
    lsp_flags = lsp_flags,
    capabilities = capabilities,
}

lspconfig.emmet_language_server.setup { default }
lspconfig.cssls.setup { default }
lspconfig.css_variables.setup { default }
lspconfig.cssmodules_ls.setup { default }
lspconfig.tailwindcss.setup { default }
lspconfig.ts_ls.setup { default }
lspconfig.pyright.setup { default }
lspconfig.jdtls.setup { default }
lspconfig.rust_analyzer.setup { default }
lspconfig.prismals.setup { default }
lspconfig.clangd.setup { default }
lspconfig.lua_ls.setup { default }

lspconfig.html.setup {
    lsp_flags = lsp_flags,
    capabilities = capabilities,
    cmd = { "vscode-html-language-server", "--stdio" },
}

lspconfig.jsonls.setup {
    lsp_flags = lsp_flags,
    capabilities = capabilities,
    cmd = { "vscode-json-language-server", "--stdio" },
}

lspconfig.eslint.setup {
    lsp_flags = lsp_flags,
    capabilities = capabilities,
    root_dir = lspconfig_util.root_pattern({ "*.js", "*.ts" }),
}

lspconfig.dockerls.setup {
    lsp_flags = lsp_flags,
    capabilities = capabilities,
    root_dir = lspconfig_util.root_pattern({ "[dD]ockerfile*" }),
}

lspconfig.docker_compose_language_service.setup {
    lsp_flags = lsp_flags,
    capabilities = capabilities,
    root_dir = lspconfig_util.root_pattern({
        "docker-compose.ya?ml",
        "compose.ya?ml",
    }),
}
