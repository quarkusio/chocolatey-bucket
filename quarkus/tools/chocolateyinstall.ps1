# Generated with JReleaser 1.3.0 at 2023-04-04T15:20:12.738518+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.16.6.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.16.6.Final/quarkus-cli-2.16.6.Final.zip' `
    -Checksum '3d3249abe03a4ff9515f7644c3412f7d7f7c712cda8c4fced6e03712ab19f61d' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
