# Generated with JReleaser 1.3.0 at 2023-11-21T16:23:03.580059+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.5.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.5.3/quarkus-cli-3.5.3.zip' `
    -Checksum '9d425ea5bc48401e594343368d8e2df6688e38a8d24ae2d2a88d69cb77069340' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
