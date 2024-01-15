-- Lazy bootstrap
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

-- Initialize lazy with dynamic loading of anything in the plugins directory
require("lazy").setup("plugins", {
	change_detection = {
    	enabled = true, -- automatically check for config file changes and reload the ui
    	notify = false, -- turn off notifications whenever plugin changes are made
  },
})

-- These modules are not loaded by lazy
require("core.options") -- Vim options
require("core.keymaps") -- Map keys/combos to different keys/combos
