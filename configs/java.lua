local config = {
  cmd = {
    'java',
    '-Declipse.application=org.eclipse.jdt.ls.core.id1',
    '-Dosgi.bundles.defaultStartLevel=4',
    '-Declipse.product=org.eclipse.jdt.ls.core.product',
    '-Dlog.protocol=true',
    '-Dlog.level=ALL',
    '-Xmx1g',
    '--add-modules=ALL-SYSTEM',
    '--add-opens', 'java.base/java.util=ALL-UNNAMED',
    '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
    '-jar', '~/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher.gtk.linux.x86_64_1.2.700.v20221108-1024.jar',
    '-configuration', '~/.local/share/nvim/mason/packages/jdtls/config_linux',
    -- '-data', '<todo>'
  },
  root_dir = require("jdtls.setup").find_root({ "pom.xml", "build.gradle" }),
  settings = {
    java = {}
  },
  init_options = {
    bundles = {}
  }
}

require("jdtls").start_or_attach(config)
