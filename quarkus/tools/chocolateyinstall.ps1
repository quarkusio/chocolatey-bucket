# Generated with JReleaser 1.3.0 at 2024-06-26T07:51:15.929185088Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.12.0'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.12.0/quarkus-cli-3.12.0.zip' `
    -Checksum '1a0e81be721c6fa8e7a524d45ba869d5c925c0af6bc82d6fcde62ee7b1e16095' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
