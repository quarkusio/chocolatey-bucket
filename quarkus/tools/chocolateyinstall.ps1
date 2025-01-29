# Generated with JReleaser 1.3.0 at 2025-01-29T17:56:01.730677955Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.18.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.18.1/quarkus-cli-3.18.1.zip' `
    -Checksum 'f2c13e9d1bd22fb670414913be551289da9fdb8f0323ffff4b3b7e4fa2f438b7' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
