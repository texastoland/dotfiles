export alias / = path join

export const ~ = {
  nu: $nu.default-config-dir
  user: $nu.home-path
  config: ($nu.home-path |/ .config)
  state: ($nu.home-path |/ .local state)
  data: ($nu.home-path |/ .local share)
  repos: ($nu.home-path |/ Developer)
}

export def ~ [...paths: string]: nothing -> path {
  $~.user |/ ...$paths
}
