# Generated with JReleaser 1.1.0 at 2022-10-19T17:05:24.103415+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.13.3.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.13.3.Final/quarkus-cli-2.13.3.Final.zip' `
    -Checksum 'a5abac1f1d526222dc5ca46b22660bad8090c6b789719ad6b3f806b370e5bb4e' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
