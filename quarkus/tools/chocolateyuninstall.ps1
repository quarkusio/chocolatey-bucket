# Generated with JReleaser 1.3.0 at 2025-04-16T15:03:23.861827213Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.21.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Uninstall-BinFile -Name 'quarkus' -Path $app_exe
