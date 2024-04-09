export def main [
  cmd: closure
  --git-dir: string
  --work-tree: string
]: nothing -> any {
  with-env {
    GIT_DIR: ($git_dir | default $env.DOTFILES_GIT_DIR)
    GIT_WORK_TREE: ($work_tree | default $env.HOME)
  } $cmd
}
