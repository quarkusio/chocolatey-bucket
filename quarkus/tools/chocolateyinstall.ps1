# Generated with JReleaser 1.3.0 at 2026-04-16T20:06:34.751912081Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.34.5'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.34.5/quarkus-cli-3.34.5.zip' `
    -Checksum '5ffb449e6e11c36de501f4e87cab01ead063f1c542e9fa68f2118160ef9d9a61' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
