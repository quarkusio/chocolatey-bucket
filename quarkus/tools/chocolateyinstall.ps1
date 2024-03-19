# Generated with JReleaser 1.3.0 at 2024-03-19T13:56:52.458896817Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.8.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.8.3/quarkus-cli-3.8.3.zip' `
    -Checksum '8af20d0fb789b9971402db6133fa5e3e9ebc66a99d7f94f023225ade1682a961' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
