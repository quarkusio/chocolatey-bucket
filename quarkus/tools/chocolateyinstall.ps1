# Generated with JReleaser 1.3.0 at 2026-08-04T16:30:19.560238745Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.38.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.38.1/quarkus-cli-3.38.1.zip' `
    -Checksum '63b22774c6f3362a776844ad071a2b88f194104af6af52aa9d62daaeca2a05ab' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
