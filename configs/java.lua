-- TODO finish workspace config
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t");
-- local workspace_dir = ""
local config = {
  cmd = {
    cmd = { "~/.local/share/nvim/mason/packages/jdtls/bin/jdtls" },
    root_dir = vim.fs.dirname(vim.fs.find({ "pom.xml", "build.gradle" }, { upward = true })[1])
  }
}

require("jdtls").start_or_attach(config)
