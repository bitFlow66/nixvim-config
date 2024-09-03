# Formatter
{ pkgs, ...}:
{
  plugins.conform-nvim = {
  enable = true;
  formattersByFt = {
      lua = [ "stylua" ];
      # Conform will run multiple formatters sequentially
      python = [ "isort" "blue" ];
      # Use a sub-list to run only the first available formatter
      # javascript = [ [ "prettierd" "prettier" ] ];
      # Use the "*" filetype to run formatters on all filetypes.
      # "*" = [ "codespell" ];
      # Use the "_" filetype to run formatters on filetypes that don't
      # have other formatters configured.
      # "_" = [ "trim_whitespace" ];
     };
     formatOnSave = "function(args)
        require('conform').format({ bufnr = args.buf })
        end";
    };
}