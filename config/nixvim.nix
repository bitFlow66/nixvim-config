{
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./opts.nix
    ./keymaps.nix
    ./autocmds.nix
    ./plugins/compositionRoot.nix
  ];

    # enable = true;
    #
    # defaultEditor = true;
    #
    # colorschemes.kanagawa.enable = true;

    # Themes with style not working because of conflicting value
    # colorschemes.base16 = {
    #   enable = true;
    #   colorscheme = "tokyodark";
    # };
    colorschemes.tokyonight = {
    enable = true;
    settings.style = "night";
    };
    # colorschemes.catppuccin = {
    #   enable = true;
    #   flavour = "mocha";
    # };
}
