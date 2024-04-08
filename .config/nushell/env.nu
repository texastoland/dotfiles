# see .zshenv
use std *
# workaround: nushell/nushell#7849
use $'($nu.default-config-dir)/scripts/dirs.nu' *
use ($~.nu |/ scripts vars.nu)
use ($~.nu |/ scripts init.nu)

init broot_lib.nu { ^broot --print-shell-function nushell }
init starship.nu { ^starship init nu }
init starship.toml { ^starship preset nerd-font-symbols }
init mise.nu { ^mise activate nu }
