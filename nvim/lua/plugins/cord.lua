return {
  "vyfor/cord.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  build = ":Cord update",
  config = function()
    require("cord").setup({
      enabled = true,
      log_level = vim.log.levels.OFF,
      editor = {
        client = "neovim",
        tooltip = "The Superior Text Editor",
        icon = nil,
      },
      display = {
        theme = "default",
        flavor = "dark",
        view = "full",
        swap_fields = false,
        swap_icons = false,
      },
      timestamp = {
        enabled = true,
        reset_on_idle = false,
        reset_on_change = false,
        shared = false,
      },
      idle = {
        enabled = false,
        timeout = 300000,
        show_status = true,
        ignore_focus = true,
        unidle_on_focus = true,
        smart_idle = true,
        details = "Idling",
        state = nil,
        tooltip = "💤",
        icon = nil,
      },
      text = {
        default = nil,
        workspace = function(opts)
          return ""
        end,
        viewing = function(opts)
          return "" -- .. opts.filename
        end,
        editing = function(opts)
          return "" -- .. opts.filename
        end,
        file_browser = function(opts)
          return ""
        end,
        plugin_manager = function(opts)
          return ""
        end,
        lsp = function(opts)
          return ""
        end,
        docs = function(opts)
          return ""
        end,
        vcs = function(opts)
          return ""
        end,
        notes = function(opts)
          return ""
        end,
        debug = function(opts)
          return ""
        end,
        test = function(opts)
          return ""
        end,
        diagnostics = function(opts)
          return ""
        end,
        games = function(opts)
          return ""
        end,
        terminal = function(opts)
          return ""
        end,
        dashboard = "",
      },
      buttons = nil,
      -- buttons = {
      --   {
      --     label = 'View Repository',
      --     url = function(opts) return opts.repo_url end,
      --   },
      -- },
      assets = nil,
      variables = nil,
      hooks = {
        ready = nil,
        shutdown = nil,
        pre_activity = nil,
        post_activity = nil,
        idle_enter = nil,
        idle_leave = nil,
        workspace_change = nil,
        buf_enter = nil,
      },
      plugins = nil,
      advanced = {
        plugin = {
          autocmds = true,
          cursor_update = "on_hold",
          match_in_mappings = true,
        },
        server = {
          update = "fetch",
          pipe_path = nil,
          executable_path = nil,
          timeout = 300000,
        },
        discord = {
          pipe_paths = nil,
          reconnect = {
            enabled = false,
            interval = 5000,
            initial = true,
          },
        },
        workspace = {
          root_markers = {
            ".git",
            ".hg",
            ".svn",
          },
          limit_to_cwd = false,
        },
      },
    })
  end,
}
