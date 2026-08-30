vim.pack.add({
  {
    src = "https://github.com/JavaHello/spring-boot.nvim",
    version = "218c0c26c14d99feca778e4d13f5ec3e8b1b60f0",
  },

  "https://github.com/MunifTanjim/nui.nvim",
  "https://github.com/mfussenegger/nvim-dap",
  "https://github.com/nvim-java/nvim-java",
})

require("java").setup({
  -- ========================================================
  -- Startup checks
  -- ========================================================

  checks = {
    nvim_version = true,
    nvim_jdtls_conflict = true,
  },

  -- ========================================================
  -- JDTLS
  -- ========================================================

  jdtls = {
    -- version = "1.61.0",

    -- اگر می‌خواهی nvim-java خودش دانلود کند:
    path = nil,
    auto_install = true,
  },

  -- ========================================================
  -- Lombok
  -- ========================================================

  lombok = {
    enable = true,

    version = "1.18.40",

    path = nil,
    auto_install = true,
  },

  -- ========================================================
  -- Java Test
  -- ========================================================

  java_test = {
    enable = true,

    version = "0.40.1",

    path = nil,
    auto_install = true,
  },

  -- ========================================================
  -- Java Debug Adapter
  -- ========================================================

  java_debug_adapter = {
    enable = true,

    version = "0.58.2",

    path = nil,
    auto_install = true,
  },

  -- ========================================================
  -- Spring Boot Tools
  -- ========================================================

  spring_boot_tools = {
    enable = true,

    version = "1.55.1",

    path = nil,
    auto_install = true,
  },

  -- ========================================================
  -- JDK
  -- ========================================================

  jdk = {
    auto_install = false,

    -- CHANGE_ME
    -- اگر JDK را خودت نصب کرده‌ای:
    version = "21",

    -- CHANGE_ME
    -- مسیر JDK واقعی خودت را اینجا بگذار
    --
    -- مثال:
    -- path = "/usr/lib/jvm/java-21-openjdk"
    --
    path = "/opt/java/jdk-21.0.12",
  },

  -- ========================================================
  -- Logging
  -- ========================================================

  log = {
    use_console = true,
    use_file = true,

    level = "info",

    log_file = vim.fn.stdpath("state") .. "/nvim-java.log",

    max_lines = 1000,

    show_location = false,
  },
})

vim.lsp.enable("jdtls")
