{
  plugins.neorg = {
    enable = true;
    lazyLoading = true;
    modules = {
      "core.defaults" = {
        # Activate module, but do not overwrite default config
        __empty = null;
      };
      "core.concealer" = {
        __empty = null;
      };
      "core.dirman" = {
        config = {
          workspaces = {
            home = "~/notes/home";
          };
        };
      };
    };
  };
}

