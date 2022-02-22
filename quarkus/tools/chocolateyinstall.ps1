# Generated with JReleaser 1.0.0-M1 at 2022-02-22T21:51:34.384194+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.7.2.Final'
$app_bat = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.7.2.Final/quarkus-cli-2.7.2.Final.zip' `
    -Checksum 'ab5f87351f57caaf524fe74d6b0e461b6f009c9c4e8c5e64c9ce318587860a00' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_bat
