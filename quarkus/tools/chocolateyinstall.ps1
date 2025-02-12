# Generated with JReleaser 1.3.0 at 2025-02-12T17:35:46.513942342Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.18.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.18.3/quarkus-cli-3.18.3.zip' `
    -Checksum '1e03496b4544e5849b6cc3970518334d0266dea9b5139fb231a0cb89a5b5d309' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
