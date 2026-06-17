# Generated with JReleaser 1.3.0 at 2026-06-17T18:01:09.254375794Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.20.6.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.20.6.2/quarkus-cli-3.20.6.2.zip' `
    -Checksum '0e18236580621881136ccc448db920ea150a7a667b2154bb8b7b7a29c401829a' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
