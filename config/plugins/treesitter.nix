{
  plugins = {
    treesitter = {
      enable = true;
      nixGrammars = true;
      indent = true;
    };
    treesitter-context = {
      enable = true;
      settings.maxLines = 2;
    };
    # Maybe use tresitter-refactor
    rainbow-delimiters.enable = true;
  };
}
