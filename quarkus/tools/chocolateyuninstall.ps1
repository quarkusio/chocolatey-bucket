# Generated with JReleaser 1.3.0 at 2025-02-26T15:32:51.349135147Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.19.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Uninstall-BinFile -Name 'quarkus' -Path $app_exe
