# Generated with JReleaser 1.3.0 at 2026-05-04T13:46:26.428252675Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.27.3.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.27.3.1/quarkus-cli-3.27.3.1.zip' `
    -Checksum 'c5a2d7665cd56a99ebd68b0fb247e6c1852b68496a8a9641012e9e18c3e07806' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
