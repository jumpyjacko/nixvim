{ pkgs, lib, ... }:

{
  extraPlugins = [
    {
      plugin = pkgs.vimUtils.buildVimPlugin {
        name = "oldworld";
        src = pkgs.fetchFromGitHub {
          owner = "dgox16";
          repo = "oldworld.nvim";
          rev = "db072a0bd2c90035fc3a57a73014cb54d3902f1f";
          hash = "sha256-0E9Nj4XB7Kum/hj1RlN2Oz6IQFD2y7FboFmbOOGGmXc=";
        };
      };
    }
  ];

  colorscheme = "oldworld";
}
