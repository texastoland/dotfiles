export-env {
  $env.NUPM_HOME = ($env.XDG_DATA_HOME |/ nupm)
  $env.NU_LIB_DIRS ++= [
    $env.GENERATED_SCRIPTS
    ($env.NUPM_HOME |/ modules)
  ]
  path add ($env.NUPM_HOME |/ scripts)
}
