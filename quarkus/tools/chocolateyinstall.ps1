# Generated with JReleaser 1.3.0 at 2024-10-30T14:51:34.595234969Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.16.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.16.1/quarkus-cli-3.16.1.zip' `
    -Checksum 'de655d895ac90e31eb60d41035415f95e1133c50efa5e8eda6db61c1e6b8cdc6' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
