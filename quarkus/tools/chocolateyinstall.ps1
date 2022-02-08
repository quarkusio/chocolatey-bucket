# Generated with JReleaser 1.0.0-M1 at 2022-02-08T17:06:54.373914+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.7.1.Final'
$app_bat = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.7.1.Final/quarkus-cli-2.7.1.Final.zip' `
    -Checksum 'c1b285a00fa319eae5247d91818d2ac6a201352eb1abfb0192a5c397e6d0a9ee' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_bat
