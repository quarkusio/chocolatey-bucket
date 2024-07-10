# Generated with JReleaser 1.3.0 at 2024-07-10T14:22:25.962742938Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.12.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.12.2/quarkus-cli-3.12.2.zip' `
    -Checksum '4f54fd895ff12bb253c85891d54b1b3fb2086afd811d404cfb3ee3b0d3c1aff3' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
