{
  # Import all your configuration modules here
  imports = [
    ./core.nix
    ./dependencies.nix

    ./plugins/auto-pairs.nix
    ./plugins/blink.nix
    ./plugins/fidget.nix
    ./plugins/gitsigns.nix
    ./plugins/lspconfig.nix
    ./plugins/mini-pick.nix
    ./plugins/oil.nix
    ./plugins/treesitter.nix
    ./plugins/zen-mode.nix

    ./mappings.nix
    ./autocommands.nix
    ./highlights.nix
    ./statusline.nix
  ];
}
