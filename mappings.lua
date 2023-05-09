local M = {}

M.dap = {
  n = {
    ["<leader>dr"] = {
      function ()
        -- TODO  
      end,
      "run debugger"
    },
    ["<leader>db"] = {
      function ()
        require("dap").toggle_breakpoint()
      end,
      "toggle breakpoint"
    },
    ["<leader>ds"] = {
      function ()
        require("dap").step_over()
      end,
      "step over"
    },
    ["<leader>di"] = {
      function ()
        require("dap").step_into()
      end,
      "step into"
    },
    ["<leader>dus"] = {
      function ()
        local widgets = require("dap.ui.widgets");
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "open debug sidebar"
    }
  }
}

M.crates = {
  n = {
    ["<leader>rcu"] = {
      function ()
        require("crates").upgrade_all_crates()
      end,
      "update crates"
    }
  }
}

return M
