# Generated with JReleaser 1.3.0 at 2025-08-29T13:25:47.933096135Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.15.6.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.15.6.2/quarkus-cli-3.15.6.2.zip' `
    -Checksum '7ad81117233a1e446a8595c04a5bc63eaa9e8dd798b11f2c2be704690ef7b00a' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
