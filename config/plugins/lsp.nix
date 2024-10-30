{ pkgs, inputs, ... }:
{
  plugins = {

    hmts.enable = true;

    # lspkind = {
    #   enable = true;
    #
    #   cmp = {
    #     enable = true;
    #     menu = {
    #       nvim_lsp = "[LSP]";
    #       nvim_lua = "[api]";
    #       path = "[path]";
    #       luasnip = "[snip]";
    #       buffer = "[buffer]";
    #       neorg = "[neorg]";
    #       cmp_tabby = "[Tabby]";
    #     };
    #   };
    # };

    lsp = {
      enable = true;

      servers = {
        # nil-ls.enable = true;
        nixd.enable = true;
        pylyzer.enable = true;
        bashls.enable = true;
        jsonls.enable = true;
        marksman.enable = true;
        # ruff-lsp.enable = true;
        yamlls.enable = true;
        zls = {
          enable = true;
          # Disable package, so that the local server is used
          package = null;
        };
      };
      keymaps.lspBuf = {
        K = "hover";
        gD = "references";
        gd = "definition";
        gi = "implementation";
        gt = "type_definition";
      };
      keymaps.diagnostic = {
        "<leader>j" = "goto_next";
        "<leader>k" = "goto_prev";
      };
    };
  };
}
