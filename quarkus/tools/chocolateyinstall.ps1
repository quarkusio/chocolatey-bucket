# Generated with JReleaser 1.3.0 at 2023-08-23T12:40:47.914364+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.3.0'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.3.0/quarkus-cli-3.3.0.zip' `
    -Checksum '28b1cbc3c6b2db9ffd3612edd53f42f926c3673d6cae59914ffd58c009cc7e9b' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
