# Generated with JReleaser 1.0.0-M1 at 2022-03-02T17:05:26.819335+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.7.3.Final'
$app_bat = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.7.3.Final/quarkus-cli-2.7.3.Final.zip' `
    -Checksum '2cd1beef93311a44a173b8120ef94facdc4c3837ee6387e0f35f1125671ab7b4' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_bat
