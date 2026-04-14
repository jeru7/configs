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
        theme = "catppuccin",
        flavor = "dark",
        view = "editor",
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
        workspace = function()
  local cwd = vim.fn.getcwd()

  -- get git root (if any)
  local git_root = vim.fn.systemlist("git rev-parse --show-toplevel 2>/dev/null")[1]

  if git_root and git_root ~= "" then
    local repo_name = vim.fn.fnamemodify(git_root, ":t")

    -- make cwd relative to git root
    local rel = cwd:gsub("^" .. vim.pesc(git_root) .. "/?", "")

    if rel == "" then
      -- at repo root → show repo name only
      return "Workspace: " .. repo_name
    else
      -- inside repo → repo/subfolder
      return "Workspace: " .. repo_name .. "/" .. rel
    end
  end

  -- NOT in git repo → only tail
  return "Workspace: " .. vim.fn.fnamemodify(cwd, ":t")
end,
        viewing = function(opts)
          return ""
        end,
        editing = function(opts)
          return ""
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
      assets = {
        opencode = {
          icon = "neovim",
          tooltip = "Neovim",
          text = "",
          color = "neovim",
        },
        opencode_output = {
          icon = "neovim",
          tooltip = "Neovim",
          text = "",
          color = "neovim",
        },
        opencode_input = {
          icon = "neovim",
          tooltip = "Neovim",
          text = "",
          color = "neovim",
        },
      },
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
