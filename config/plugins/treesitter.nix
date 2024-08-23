{
  plugins = {
    treesitter = {
      enable = true;
      nixGrammars = true;
      indent = true;
      disabledLanguages = [ "zig" ];
    };
    treesitter-context = {
      enable = true;
      settings.maxLines = 2;
    };
    rainbow-delimiters.enable = true;
  };
}
