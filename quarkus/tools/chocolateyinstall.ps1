# Generated with JReleaser 1.3.0 at 2026-10-19T14:16:22.04918372Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.40.1.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.40.1.1/quarkus-cli-3.40.1.1.zip' `
    -Checksum 'cd1120ea641d7064203c1ee69361e35e870ea4e3a458aea84bfcfabdeffd4747' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
