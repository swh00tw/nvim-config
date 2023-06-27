local status, comment = pcall(require, 'Comment')
if (not status) then return end

comment.setup {
  pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
}

-- workaround for issue: https://github.com/JoosepAlviste/nvim-ts-context-commentstring/issues/29
vim.keymap.set("v", "<leader>gc", ":s/{\\/\\* // | '<,'>s/ \\*\\/}//<cr> | :noh<cr>", { silent = true })
