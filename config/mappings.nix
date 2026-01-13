{
  keymaps = [
    {
      mode = "n";
      key = "<leader>w";
      action = "<cmd>write<CR>";
      options = {};
    }
    
    {
      mode = "n";
      key = "<leader>q";
      action = "<cmd>quit<CR>";
      options = {};
    }
    
    {
      mode = "i";
      key = "NE";
      action = "<Esc>";
      options = {
        noremap = true;
        silent = true;
      };
    }
    
    {
      mode = "n";
      key = "<leader>lf";
      action = "vim.lsp.buf.format";
      options = {};
    }
    
    {
      mode = "n";
      key = "<leader>la";
      action = "vim.lsp.buf.code_action";
      options = {};
    }
    
    {
      mode = "n";
      key = "<leader>lr";
      action = "vim.lsp.buf.rename";
      options = {};
    }
    
    {
      mode = "n";
      key = "?";
      action = "vim.diagnostic.open_float";
      options = {};
    }
    
    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>Pick files<CR>";
      options = {};
    }
    
    {
      mode = "n";
      key = "<leader>fh";
      action = "<cmd>Pick help<CR>";
      options = {};
    }
    
    {
      mode = "n";
      key = "<leader>fg";
      action = "<cmd>Pick grep_live<CR>";
      options = {};
    }
    
    {
      mode = "n";
      key = "<leader>fb";
      action = "<cmd>Pick buffers<CR>";
      options = {};
    }
    
    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>Oil<CR>";
      options = {};
    }
    
    {
      mode = "n";
      key = "<leader>gs";
      action = "<cmd>Gitsigns stage_hunk<CR>";
      options = {};
    }
    
    {
      mode = "n";
      key = "<leader>gr";
      action = "<cmd>Gitsigns reset_hunk<CR>";
      options = {};
    }
    
    {
      mode = "n";
      key = "<leader>z";
      action = "<cmd>lua require(\"zen-mode\").toggle({ window = { width = .65 }, plugins = { options = { showcmd = true, laststatus = 3 } } })<CR>";
      options = {};
    }
  ];
}
