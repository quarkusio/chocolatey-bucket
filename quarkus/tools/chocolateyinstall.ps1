# Generated with JReleaser 1.3.0 at 2024-12-19T17:37:47.301389745Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.17.5'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.17.5/quarkus-cli-3.17.5.zip' `
    -Checksum '2198e9eb4e5148987c609126387f6abd0bbe33707fae03bdba0bad767eccfe1f' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
