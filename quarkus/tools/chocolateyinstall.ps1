# Generated with JReleaser 1.3.0 at 2023-04-26T13:55:28.210265+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.0.1.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.0.1.Final/quarkus-cli-3.0.1.Final.zip' `
    -Checksum 'f06784672a94e4a4b6aba95c2ac7188774e3e665ad93bea0784123e8f142719e' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
