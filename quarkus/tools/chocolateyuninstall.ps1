# Generated with JReleaser 1.3.0 at 2026-01-07T13:16:58.994804745Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.30.6'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Uninstall-BinFile -Name 'quarkus' -Path $app_exe
