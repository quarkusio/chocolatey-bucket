# Generated with JReleaser 1.0.0 at 2022-05-25T17:47:05.614985+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.9.2.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.9.2.Final/quarkus-cli-2.9.2.Final.zip' `
    -Checksum 'a9cee28a4a552c201ac8212657cf459ddd33674f83aa93cb28cfe86417a24bf0' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
