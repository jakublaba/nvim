local M = {}

M.dap = {
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "toggle breakpoint"
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

return M
