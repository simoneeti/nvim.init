return {
  "rebelot/heirline.nvim",
  event = "BufEnter",
  opts = function()
    local status = require "astronvim.utils.status"
    return {
      opts = {
        disable_winbar_cb = function(args)
          return not require("astronvim.utils.buffer").is_valid(args.buf)
              or status.condition.buffer_matches({
                buftype = { "terminal", "prompt", "nofile", "help", "quickfix" },
                filetype = { "NvimTree", "neo%-tree", "dashboard", "Outline", "aerial" },
              }, args.buf)
        end,
      },
      statusline = { -- statusline
        hl = { fg = "fg", bg = "bg" },
        status.component.mode { mode_text = { padding = { left = 1, right = 1 } } },
        -- status.component.git_branch(),
        status.component.separated_path { separator = "/", path_func = status.provider.filename { modify = ":.:h" } },
        status.component.file_info {
          file_modified = {},
          file_icon = false, filetype = false
        },
        -- status.component.git_diff(),
        status.component.fill(),
        status.component.cmd_info(),
        status.component.fill(),
        status.component.diagnostics(),
        -- status.component.lsp(),
        -- status.component.treesitter(),
        status.component.nav { scrollbar = false },
        --        status.component.mode { surround = { separator = "right" } },
      },
      -- winbar = {
      --   status.component.separated_path { path_func = status.provider.filename { modify = ":.:h" } },
      --   status.component.file_info { -- add file_info to breadcrumbs
      --     file_icon = { hl = status.hl.filetype_color, padding = { left = 0 } },
      --     file_modified = false,
      --     file_read_only = false,
      --     hl = status.hl.get_attributes("winbar", true),
      --     surround = false,
      --     update = "BufEnter",
      --   },
      --   -- status.component.breadcrumbs {
      --   --   icon = { hl = true },
      --   --   hl = status.hl.get_attributes("winbar", true),
      --   --   prefix = true,
      --   --   padding = { left = 0 },
      --   -- },
      -- },
      -- tabline = { -- bufferline
      --   {         -- file tree padding
      --     condition = function(self)
      --       self.winid = vim.api.nvim_tabpage_list_wins(0)[1]
      --       return status.condition.buffer_matches(
      --         { filetype = { "aerial", "dapui_.", "neo%-tree", "NvimTree", "edgy" } },
      --         vim.api.nvim_win_get_buf(self.winid)
      --       )
      --     end,
      --     provider = function(self) return string.rep(" ", vim.api.nvim_win_get_width(self.winid) + 1) end,
      --     hl = { bg = "tabline_bg" },
      --   },
      --   status.heirline.make_buflist(status.component.tabline_file_info()),     -- component for each buffer tab
      --   status.component.fill { hl = { bg = "tabline_bg" } },                   -- fill the rest of the tabline with background color
      --   {                                                                       -- tab list
      --     condition = function() return #vim.api.nvim_list_tabpages() >= 2 end, -- only show tabs if there are more than one
      --     status.heirline.make_tablist {                                        -- component for each tab
      --       provider = status.provider.tabnr(),
      --       hl = function(self) return status.hl.get_attributes(status.heirline.tab_type(self, "tab"), true) end,
      --     },
      --     { -- close button for current tab
      --       provider = status.provider.close_button { kind = "TabClose", padding = { left = 1, right = 1 } },
      --       hl = status.hl.get_attributes("tab_close", true),
      --       on_click = {
      --         callback = function() require("astronvim.utils.buffer").close_tab() end,
      --         name = "heirline_tabline_close_tab_callback",
      --       },
      --     },
      --   },
      -- },
      statuscolumn = vim.fn.has "nvim-0.9" == 1 and {
        status.component.foldcolumn(),
        status.component.fill(),
        status.component.numbercolumn(),
        status.component.signcolumn(),
      } or nil,
    }
  end,
  config = require "plugins.configs.heirline",
}
