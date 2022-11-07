# Generated with JReleaser 1.3.0 at 2022-11-07T17:13:29.884085+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.13.4.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.13.4.Final/quarkus-cli-2.13.4.Final.zip' `
    -Checksum '17a9c69a18e1b8821baad00988c836f282ab802e4d37d33be1eba69403463e24' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
