{
  plugins.nvim-ufo = {
    enable = true;
    settings.provider_selector = "function(bufnr, filetype, buftype)
      return { 'lsp', 'indent' }
    end";
  };
}
