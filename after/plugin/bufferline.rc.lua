local status, bufferline = pcall(require, 'bufferline')
if (not status) then return end

local bufferlineBg = '#073642'
local inactiveTabBg = '#002b36'

bufferline.setup {
  options = {
    mode = 'tabs',
    separator_style = 'slant',
    always_show_bufferline = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    color_icons = true
  },
  highlights = {
    separator = {
      -- Both end of other tabs
      fg = bufferlineBg,
      bg = inactiveTabBg
    },
    separator_selected = {
      -- Both end of selected tab
      fg = bufferlineBg,
    },
    background = {
      -- Other tabs
      fg = '#657b83',
      bg = inactiveTabBg,
    },
    buffer_selected = {
      -- Selected tab
      fg = '#fdf6e3',
      bold = true,
    },
    fill = {
      -- Rest part
      bg = bufferlineBg
    },
    modified = {
      -- modified indicator at other tabs
      bg = inactiveTabBg
    },
    modified_selected = {}
  },
}

vim.keymap.set('n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>', {})
vim.keymap.set('n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>', {})
