# Generated with JReleaser 1.3.0 at 2023-08-02T19:35:25.480169+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.2.3.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.2.3.Final/quarkus-cli-3.2.3.Final.zip' `
    -Checksum '45b0e56747f6e87c63c0a29f23baf1bc0759689a89e63ac16276c9b3d0e02edc' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
