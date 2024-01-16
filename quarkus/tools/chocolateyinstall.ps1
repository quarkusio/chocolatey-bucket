# Generated with JReleaser 1.3.0 at 2024-01-16T15:21:51.935313Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.6.6'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.6.6/quarkus-cli-3.6.6.zip' `
    -Checksum '0532ae223d5eeaeea1b601a01a5ea13bed282ec9426fc6e5eb64ebec13e5f348' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
