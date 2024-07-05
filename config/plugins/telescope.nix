{
  plugins.telescope = {
    enable = true;

    keymaps = {
      "<leader>ff" = {
        action = "find_files";
        options = {
          desc = "Find files";
        };
      };
      "<leader>b" = {
        action = "buffers";
        options = {
          desc = "Buffers";
        };
      };
      "<leader>fh" = {
        action = "help_tags";
        options = {
          desc = "Find help";
        };
      };
      "<leader>gf" = {
        action = "git_files";
        options = {
          desc = "Git files";
        };
      };
      "<leader>of" = {
        action = "oldfiles";
        options = {
          desc = "Old Files";
        };
      };
      "<leader>fg" = {
        action = "live_grep";
        options = {
          desc = "Live grep";
        };
      };
      # "<leader>fd" = {
      #   action = "diagnostics";
      #   desc = "Telescope diagnostics";
      # };
    };

    settings.defaults = {
      file_ignore_patterns = [
        "^.git/"
        "^.mypy_cache/"
        "^__pycache__/"
        "^output/"
        "^data/"
        "%.ipynb"
      ];
      set_env.COLORTERM = "truecolor";
    };
    extensions = {
      fzf-native.enable = true;
    };
  };
}
