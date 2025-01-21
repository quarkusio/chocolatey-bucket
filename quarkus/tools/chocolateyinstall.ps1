# Generated with JReleaser 1.3.0 at 2025-01-21T09:08:52.809623813Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.15.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.15.3/quarkus-cli-3.15.3.zip' `
    -Checksum 'f823530aecd9d81cc51d55a31197b36b2f4888a0b3284241a2e8e7c781390a2e' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
