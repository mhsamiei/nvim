-- lua/config/sql.lua

local connections = {
  {
    alias = "postgres",
    driver = "postgresql",

    dataSourceName = string.format(
      "host=%s port=%s user=%s password=%s dbname=%s sslmode=%s",
      vim.env.PGHOST or "127.0.0.1",
      vim.env.PGPORT or "5432",
      vim.env.PGUSER or "postgres",
      vim.env.PGPASSWORD or "",
      vim.env.PGDATABASE or "postgres",
      vim.env.PGSSLMODE or "disable"
    ),
  },

  {
    alias = "mysql",
    driver = "mysql",
    dataSourceName = vim.env.MYSQL_DSN,
  },
}

return connections
