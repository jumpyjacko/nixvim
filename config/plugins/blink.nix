{
  plugins.blink-cmp = {
    enable = true;
    setupLspCapabilities = true;

    settings = {
      signature.enable = true;
      keymap = {
        preset = "default";
        <Tab>.__raw = "{ 'select_next, 'fallback' }";
        <S-Tab>.__raw = "{ 'select_prev, 'fallback' }";
        <CR>.__raw = "{ 'accept', 'fallback' }";
        <Esc>.__raw = "{ 'cancel', 'fallback' }";
      };
      completion = {
        documentation.auto_show = true;
        menu = {
          draw = {
            treesitter = {
              __unkeyed-1 = "lsp"
            };
            padding = {
              __unkeyed-1 = 0;
              __unkeyed-2 = 1;
            };
            components = {
              kind_icon = {
                text.__raw = "function(ctx) return ' ' .. ctx.kind_icon .. ctx.icon_gap .. ' ' end";
              };
            };
          };
        };
      };
    };
  };
}
