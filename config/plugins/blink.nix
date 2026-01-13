{
  plugins.blink-cmp = {
    enable = true;
    setupLspCapabilities = true;

    settings = {
      signature.enabled = true;
      keymap = {
        preset = "default";
        "<Tab>" = { __unkeyed-1 = "select_next"; __unkeyed-2 = "fallback"; };
        "<S-Tab>" = { __unkeyed-1 = "select_prev"; __unkeyed-2 = "fallback"; };
        "<CR>" = { __unkeyed-1 = "accept"; __unkeyed-2 = "fallback"; };
        "<Esc>" = { __unkeyed-1 = "cancel"; __unkeyed-2 = "fallback"; };
      };
      completion = {
        documentation.auto_show = true;
        menu = {
          draw = {
            treesitter = {
              __unkeyed-1 = "lsp";
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
