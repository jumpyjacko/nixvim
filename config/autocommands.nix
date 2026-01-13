{
  autoCmd = [
    {
      desc = "Preseve file position";
      event = [ "BufReadPost" ];
      pattern = "*";
      callback = {
        __raw = ''
          function()
            if vim.fn.line("'\"") > 1 and vim.fn.line("'\"") <= vim.fn.line("$") then
                vim.cmd("normal! g'\"")
              end
          end
        '';
      };
    }

    {
      desc = "Even window splits on window resize";
      event = [ "VimResized" ];
      pattern = "*";
      command = "wincmd =";
    }

    {
      desc = "Prevent comments on newlines";
      event = [ "BufEnter" ];
      pattern = "*";
      callback = {
        __raw = ''
          function()
            vim.opt.formatoptions:remove({ "c", "r", "o" })
          end
        '';
      };
    }

    {
      event = [ "FocusGained" ];
      pattern = "<buffer>";
      command = "checktime";
    }
  ];
}
