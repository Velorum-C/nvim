README file

save plugins.lua file
run :Mason
run :checkhealth

### Plugin manager
Packer is the plugin manager.
plugins.lua is the file that contains plugins.
To install plugins, add a 'use' declaration to this file.
To see installed plugins use :PackerStatus
To update plugins run :PackerUpdate (type r to revert)
To uninstall a plugin, delete or comment the use line in plugins.lua and run :PackerClean

### Keymaps
Check keymaps.lua for "most" of the keymaps

### Open terminal
Crtl+\ opens a floating terminal

### Git integration
<leader>c opens the Neogit box.
From there, you can view and stage changes, commit and push.
1. TAB to view
2. s to stage 
3. c ... c to commit
4. P ... p to push 
5. p ... p to pull

### Ask for help with errors
<leader>d whenever you see a warning on the left.

### Prettify
<leader>o makes your code pretty.

### Comments
In visual mode, type gc to un/comment, gb to comment a block.

### Telescope
<leader>f to fuzzy find
<leader>g to grep find
<C-v> open in split view (vertical)

### Colorscheme
Hard code colorscheme change in colorscheme.lua
Change it in vim with :colorscheme
