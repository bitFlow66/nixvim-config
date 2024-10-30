{
    autoCmd = [
      # {
      #   command = "Lsp for zig";
      #   pattern = [
      #     "*.zig*"
      #   ];
      #   callback = {
      #     __raw = ''
      #       function()
      #         vim.lsp.start({
      #           name = 'zls',
      #           cmd = {'/nix/store/4bl8mlc7cncwaj65lp3a4gn8ma9h1jyn-zls-0.13.0/bin/zls'},
      #           root_dir = vim.fs.dirname(vim.fs.find({'main.zig'}, { upward = true })[1]),
      #         })
      #       end'';
      #   };
      # }
    ];
}
