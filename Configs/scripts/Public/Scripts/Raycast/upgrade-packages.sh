#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Ugrade Packages
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 📦
# @raycast.packageName User

# Documentation:
# @raycast.author texastoland
# @raycast.authorURL https://raycast.com/texastoland

mise upgrade --bump
mise prune --yes
