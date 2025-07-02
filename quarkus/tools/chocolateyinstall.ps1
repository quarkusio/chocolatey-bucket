# Generated with JReleaser 1.3.0 at 2025-07-02T10:40:13.887106816Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.24.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.24.2/quarkus-cli-3.24.2.zip' `
    -Checksum 'd0edf808edcd5c9cf921f6a544971e0b5050cffcfce17f5634f072877c6986b7' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
