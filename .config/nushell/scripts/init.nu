export def main [
  name: string
  script: closure
]: nothing -> nothing {
  let path = $env.GENERATED_SCRIPTS |/ $name
  let force = $env.FORCE_INIT? | default false | into bool
  let age = if ($path | path exists) {
    (date now) - (ls $path).modified.0
  }
  if $force or ($age > 1day | default true) {
    do $script | save $path --force
    print $'✅ ($name) updated'
  }
}
