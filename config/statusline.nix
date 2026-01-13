{
  extraConfigLua = ''
    local function git_branch()
        local handle = io.popen("git rev-parse --abbrev-ref HEAD 2>/dev/null")
        if not handle then return "" end
        local branch = handle:read("*l")
        handle:close()
        if branch and branch ~= "" then
            return "%#StlAccent#" .. " " .. branch .. "%*"
        else
            return ""
        end
    end
    
    local function lsp_servers()
        local bufnr = vim.api.nvim_get_current_buf()
        local clients = vim.lsp.get_clients({ bufnr = bufnr })
        if #clients == 0 then return "" end
        local names = {}
        for _, client in pairs(clients) do
            table.insert(names, client.name)
        end
        return "%#StlAccent#" .. table.concat(names, ", ") .. "%*   "
    end
    
    local function mode_indicator()
        local mode_map = {
            n = { "NORMAL", "StlNormal" },
            i = { "INSERT", "StlInsert" },
            v = { "VISUAL", "StlVisual" },
            V = { "V-LINE", "StlVisual" },
            ["\22"] = { "V-BLOCK", "StlVisual" },
            c = { "COMMAND", "StlCommand" },
            R = { "REPLACE", "StlReplace" },
        }
    
        local mode = vim.api.nvim_get_mode().mode
        local label, group = unpack(mode_map[mode] or { "OTHER", "" })
    
        return "%#" .. group .. "#" .. "▎ " .. label .. " %* "
    end
    
    local function statusline()
        return table.concat {
            mode_indicator(),
            "%t %r",
            "%#StlAccent#%m%* ",
            git_branch(),
    
            "%=",
            lsp_servers(),
            "Ln %l, Col %c [%p%%]"
        }
    end
    
    _G.statusline = statusline
    
    vim.o.statusline = "%!v:lua.statusline()"
    vim.o.showmode = false
  '';
}
