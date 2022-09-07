# Generated with JReleaser 1.1.0 at 2022-09-07T17:34:47.923407+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.12.1.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.12.1.Final/quarkus-cli-2.12.1.Final.zip' `
    -Checksum 'f03cef1bf929425f334c7d796102d3c6252933803be2087dc37a79c86a9eac85' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
