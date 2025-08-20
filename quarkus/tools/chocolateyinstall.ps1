# Generated with JReleaser 1.3.0 at 2025-08-20T17:36:43.994024262Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.25.4'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.25.4/quarkus-cli-3.25.4.zip' `
    -Checksum '9183e9dd134886dc9a4f6ab898f83973f46e4a0432b75202c002be04843a15d2' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
