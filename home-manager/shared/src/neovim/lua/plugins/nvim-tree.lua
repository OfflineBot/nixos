vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require'nvim-tree'.setup {
    renderer = {
        icons = {
            glyphs = {
                folder = {
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                    symlink_open = "",
                }
            },
            show = {
                folder_arrow = false,
            }
        }
    },
    view = {
        side = 'right',
        width = 30,
    }
}
vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
vim.cmd [[command! NTT :NvimTreeToggle]]


