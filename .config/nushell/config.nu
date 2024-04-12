# see .zshrc
use nupm
use std-rfc
use bru

use nutex *
use aliases.nu *
use broot_lib.nu *
# workaround: overlay has bug with show_banner
$env.config.show_banner = false
overlay use starship.nu
overlay use mise.nu
overlay use settings.nu

overlay new session
ellie
