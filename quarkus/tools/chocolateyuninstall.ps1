# Generated with JReleaser 1.3.0 at 2026-05-27T07:31:56.266504229Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.36.0'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Uninstall-BinFile -Name 'quarkus' -Path $app_exe
