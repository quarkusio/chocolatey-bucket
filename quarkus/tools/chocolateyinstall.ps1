# Generated with JReleaser 1.3.0 at 2026-01-21T15:10:46.16928725Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.30.7'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.30.7/quarkus-cli-3.30.7.zip' `
    -Checksum '8ff2d71c6a5da9b7787835b19d531ea59493a26baf0f1644fa7e8263565e8337' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
