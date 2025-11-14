# Generated with JReleaser 1.3.0 at 2025-11-14T09:54:16.069025782Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.29.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.29.3/quarkus-cli-3.29.3.zip' `
    -Checksum '2266b808fc3da68d9e9e164440b01da151e4fe63e1529b1d2301031e9699b810' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
