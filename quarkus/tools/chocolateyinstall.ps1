# Generated with JReleaser 1.3.0 at 2025-11-19T10:01:50.008225118Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.27.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.27.1/quarkus-cli-3.27.1.zip' `
    -Checksum 'e91e01277ae114ed6910e03609bf88d3093466112b3df29c604748b27fcc482a' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
