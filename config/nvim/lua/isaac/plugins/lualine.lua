local M = {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
}

function M.config()
  local lualine = require("lualine")

  local function window()
    return vim.api.nvim_win_get_number(0)
  end

  lualine.setup({
    options = {
      theme = "auto",
      disabled_filetypes = {
        "help",
        "startuptime",
        "qf",
        "lspinfo",
        "checkhealth",
        "man",
        statusline = {
          "fugitive",
        },
      },
      ignore_focus = {
        "NvimTree",
      },
      globalstatus = true,
    },
    extensions = { "nvim-tree", "fugitive", "lazy" },
    sections = {
      lualine_a = { "mode" },
      lualine_b = { "branch" },
      lualine_c = {
        {
          function()
            return require("nvim-navic").get_location()
          end,
          cond = function()
            return package.loaded["nvim-navic"] and require("nvim-navic").is_available()
          end,
        },
      },
      lualine_x = {
     
      },
      lualine_y = {
        {
          require("lazy.status").updates,
          cond = require("lazy.status").has_updates,
        },
      },
      lualine_z = {
        function()
          return os.date("%Y-%m-%d")
        end,
      },
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = { "branch" },
      lualine_x = {},
      lualine_y = {},
      lualine_z = {},
    },
    winbar = {
      lualine_a = {
        {
          "filename",
          path = 1,
        },
      },
      lualine_b = {
        "diff",
        "diagnostics",
      },
      lualine_x = { "filetype" },
      lualine_y = { window, "progress" },
      lualine_z = { "location" },
    },
    inactive_winbar = {
      lualine_c = { "filename" },
      lualine_x = { window, "location" },
      lualine_z = {},
    },
  })
end

return M

