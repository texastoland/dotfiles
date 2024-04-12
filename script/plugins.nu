#!/usr/bin/env nu --login
[
  bru
  nu-themes
  std-rfc
] | each { nupm install --force $in }
