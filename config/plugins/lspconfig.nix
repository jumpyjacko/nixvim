{
  plugins.lspconfig.enable = true;
  lsp.servers = {
    nixd.enable = true;
    clangd.enable = true;
    cssls.enable = true;
    jsonls.enable = true;
    lua_ls.enable = true;
    marksman.enable = true;
    omnisharp.enable = true;
    rust_analyzer.enable = true;
    svelte.enable = true;
    tailwindcss.enable = true;
    tinymist.enable = true;
    ts_ls.enable = true;
    typstyle.enable = true;
    yamlls.enable = true;
  };
}
