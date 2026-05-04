# Generated with JReleaser 1.3.0 at 2026-05-04T16:28:57.412574249Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.34.7'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.34.7/quarkus-cli-3.34.7.zip' `
    -Checksum 'f5ca441b1be6bbce1bf90eed7d580ea2105ae298e2dc527e5d34d1d892dacc91' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
