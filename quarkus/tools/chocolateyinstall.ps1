# Generated with JReleaser 1.1.0 at 2022-08-05T19:09:12.546409+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.11.2.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.11.2.Final/quarkus-cli-2.11.2.Final.zip' `
    -Checksum 'b05fa823be1c37aa400fc20bd7f7017c2a7cc1f935236b81c5027adeb40cf492' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
