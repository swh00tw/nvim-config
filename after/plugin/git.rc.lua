local status, git = pcall(require, "git")
if (not status) then return end

-- shortcuts: https://github.com/dinhhuy258/git.nvim
git.setup({
  keymaps = {
    -- Open blame window
    blame = "<Leader>gb",
    -- Open file/folder in git repository
    browse = "<Leader>go",
    diff_close = "q",
  }
})
