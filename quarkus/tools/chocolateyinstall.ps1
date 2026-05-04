# Generated with JReleaser 1.3.0 at 2026-05-04T14:32:40.824657073Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.20.6.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.20.6.1/quarkus-cli-3.20.6.1.zip' `
    -Checksum '6f1d3fb11e20def996408ffc0fe2cc989e9721104632475a8f9bcf016b34552c' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
