# Generated with JReleaser 1.3.0 at 2025-01-22T17:05:43.656217535Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.17.8'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Uninstall-BinFile -Name 'quarkus' -Path $app_exe
