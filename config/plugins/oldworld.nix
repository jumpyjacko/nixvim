{ lib, ... }:

{
  lib.nixvim.plugins.mkNeovimPlugin {
    name = "oldworld";
    maintainers = "dgox16";
    url = "https://github.com/dgox16/oldworld.nvim";
    colorscheme = "oldworld";
  };

  colorscheme.oldworld.enable = true;
}
