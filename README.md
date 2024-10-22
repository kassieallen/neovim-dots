# My Neovim Config
A super clean, modular, rust-oriented neovim configuration!

Adding a plugin is as simple as creating a new `.lua` file in the `~/.config/nvim/lua/plugins` directory.
Lazy (the plugin manager used) will concatenate all the files under this directory as long as they adhere to the following structure:
```lua
-- example.lua
return{
    '<plugin shortlink>',
    config = function()
        require('<plugin name>').setup({}) -- if necessary: not all plugins need this.
    end,
}
```
