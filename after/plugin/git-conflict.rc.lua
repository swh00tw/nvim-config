local status, git_conflict = pcall(require, 'git-conflict')
if (not status) then
  print("git-conflict is not installed")
  return
end

git_conflict.setup {
  highlights = {
    -- They must have background color, otherwise the default color will be used
    incoming = 'DiffText',
    current = 'DiffAdd',
  }
}
