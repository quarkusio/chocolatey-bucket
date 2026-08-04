# Generated with JReleaser 1.3.0 at 2026-08-04T16:38:47.079972245Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.33.3.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.33.3.1/quarkus-cli-3.33.3.1.zip' `
    -Checksum '33f4cc741ddb8644f62b1ab849f4538a6bfeb3275f078118da952e5e328a99d0' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
