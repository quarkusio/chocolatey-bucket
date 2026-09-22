# Generated with JReleaser 1.3.0 at 2026-09-22T12:34:42.066453587Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.27.5.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.27.5.3/quarkus-cli-3.27.5.3.zip' `
    -Checksum '46f13a4c80f5d0ef1cadcb5fbbf1053372e71a084e212a9138efc4123a0ccee8' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
