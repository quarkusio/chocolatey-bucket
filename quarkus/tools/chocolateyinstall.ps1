# Generated with JReleaser 1.3.0 at 2025-09-24T19:31:18.737538417+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.28.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.28.1/quarkus-cli-3.28.1.zip' `
    -Checksum '323b1f7abdb8d66aa067c77e68608333e62fd47da195004313a5ba091e45c560' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
