# Generated with JReleaser 1.3.0 at 2024-07-31T09:17:05.720721254Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.13.0'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.13.0/quarkus-cli-3.13.0.zip' `
    -Checksum '03006baea51f0979ed210c496f3122e58294c16e72e55c60751fa1d1762292d2' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
