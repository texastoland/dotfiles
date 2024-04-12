export alias e = ^$env.EDITOR
export alias v = ^$env.VISUAL
export alias lg = lazygit
export alias bunx = bun x --bun
export alias run-tests = nupm test --dir $~.nu

export def reset-history []: nothing -> nothing {
  history --clear
  # workaround: nushell/nushell#7991
  rm --force ($~.nu |/ history.* | into glob)
  zsh -ic reset-history
}
