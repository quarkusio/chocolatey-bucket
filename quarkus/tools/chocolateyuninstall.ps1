# Generated with JReleaser 1.0.0-M1 at 2022-02-22T21:51:34.384194+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.7.2.Final'
$app_bat = Join-Path $app_home 'bin/quarkus.bat'

Uninstall-BinFile -Name 'quarkus' -Path $app_bat
