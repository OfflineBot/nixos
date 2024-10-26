vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require'nvim-tree'.setup {
    git = {
        enable = true,
    },
    renderer = {
        icons = {
            glyphs = {
                git = {
                    unstaged = '✗',  -- Custom unstaged icon
                    staged = '✓',     -- Custom staged icon
                    untracked = '',  -- Custom untracked icon
                    deleted = '✖',    -- Custom deleted icon
                    ignored = '☒',    -- Custom ignored icon
                },
                folder = {
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                    symlink_open = "",
                },
            },
            show = {
                folder_arrow = true,
            },
        }
    },
    view = {
        side = 'right',
        width = 30,
    }
}
vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
vim.cmd [[command! NTT :NvimTreeToggle]]


