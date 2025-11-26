# Generated with JReleaser 1.3.0 at 2025-11-26T15:46:27.340744346Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.30.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.30.1/quarkus-cli-3.30.1.zip' `
    -Checksum '41ef18e14b77e36267863cf24ce9fbcc5c613e8d52a7e5e4ddfd7a6538debc80' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
