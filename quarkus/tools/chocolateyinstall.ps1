# Generated with JReleaser 1.1.0 at 2022-07-06T17:57:26.279459+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.10.2.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.10.2.Final/quarkus-cli-2.10.2.Final.zip' `
    -Checksum 'a71b2c71e25c1a0901d801a0dbf2a2bc3207b82d9e7b88152785efa5f4a6e61c' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
