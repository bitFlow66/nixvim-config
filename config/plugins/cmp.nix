{
  plugins.cmp = {
    enable = true;
    autoEnableSources = true;

    settings = {
      snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";
      sources = [
        {name = "nvim_lsp";}
        {name = "path";}
        {name = "buffer";}
        {name = "luasnip";}
        {name =  "neorg";}
      ];
      mapping = {
        "<C-d>" = "cmp.mapping.scroll_docs(-4)";
        "<C-f>" = "cmp.mapping.scroll_docs(4)";
        "<C-Space>" = "cmp.mapping.complete()";
        "<C-e>" = "cmp.mapping.close()";
        # "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
        # "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
        # "<CR>" = "cmp.mapping.confirm({ select = true })";
        "<CR>" = "cmp.mapping(function(fallback)
              if cmp.visible() then
                  if require('luasnip').expandable() then
                      require('luasnip').expand()
                  else
                      cmp.confirm({
                          select = true,
                      })
                  end
              else
                  fallback()
              end
          end)";

        # Go to next cmp entry or jump to next placeholder
        "<Tab>" = "cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif require('luasnip').locally_jumpable(1) then
            require('luasnip').jump(1)
          else
            fallback()
          end
        end, { 'i', 's' })";

        # Go to previous cmp entry or jump to previous placeholder
        "<S-Tab>" = "cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif require('luasnip').locally_jumpable(-1) then
            require('luasnip').jump(-1)
          else
            fallback()
          end
        end, { 'i', 's' })";
      };
    };
  };
}
