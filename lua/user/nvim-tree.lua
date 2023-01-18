local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
  return
end

local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup {
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  renderer = {
    root_folder_modifier = ":t",
    icons = {
      glyphs = {
        default = "d",
        symlink = "s",
        folder = {
          arrow_open = "<",
          arrow_closed = ">",
          default = "fol",
          open = "op",
          empty = "",
          empty_open = "",
          symlink = "s",
          symlink_open = "s_o",
        },
        git = {
			unstaged = "US",
          staged = "S",
          unmerged = "UM",
          renamed = "➜",
          untracked = "UT",
          deleted = "del",
          ignored = "◌",
        },
      },
    },
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "H",
      info = "I",
      warning = "?",
      error = "!",
    },
  },
  view = {
    width = 30,
    side = "left",
    mappings = {
      list = {
        { key = { "l", "<CR>", "o" }, cb = tree_cb "edit" },
        { key = "h", cb = tree_cb "close_node" },
        { key = "v", cb = tree_cb "vsplit" },
      },
    },
  },
}
