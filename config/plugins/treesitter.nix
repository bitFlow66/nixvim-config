{
  plugins = {
    treesitter = {
      enable = true;
      nixvimInjections = true;
      folding = true;
      nixGrammars = true;
      settings = {
        indent.enable = true;
        highlight = {
          enable = true;
          disable = [ "zig" ];
        };
      };
    };
    treesitter-context = {
      enable = true;
      settings.maxLines = 2;
    };
    rainbow-delimiters.enable = true;

    treesitter-refactor = {
      enable = true;
      highlightDefinitions = {
        enable = true;
        # Set to false if you have an `updatetime` of ~100.
        clearOnCursorMove = false;
      };
    };
  };
}
