# Generated with JReleaser 1.3.0 at 2026-04-08T17:07:39.358726185Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.34.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.34.3/quarkus-cli-3.34.3.zip' `
    -Checksum '50a8bfc998b7191e9f5c52275a7a072e27886058c1efe5023de6714e2ddf5739' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
