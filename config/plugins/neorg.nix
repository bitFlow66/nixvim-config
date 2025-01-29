{
  plugins.neorg = {
    enable = true;
    # lazyLoading = true;
    settings.load = {
      "core.defaults" = {
        # Activate module, but do not overwrite default config
        __empty = null;
      };
      "core.concealer" = {
        __empty = null;
      };
      "core.keybinds" = {
        __empty = null;
        config = {
          default_keybinds = true;
        };
      };
      "core.dirman" = {
        config = {
          workspaces = {
            home = "~/notes/home";
          };
        };
      };
      "core.export" = {
        __empty = null;
      };
      "core.summary" = {
        __empty = null;
      };
    };
  };
}

