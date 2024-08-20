# Generated with JReleaser 1.3.0 at 2024-08-20T14:40:59.613911449Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.13.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.13.3/quarkus-cli-3.13.3.zip' `
    -Checksum 'd36b953543e644d77adde2df27992de957dc750b069916f7e8090f241adc5bfc' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
