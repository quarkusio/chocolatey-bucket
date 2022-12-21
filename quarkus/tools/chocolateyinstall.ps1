# Generated with JReleaser 1.3.0 at 2022-12-21T17:16:04.286997+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.15.1.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.15.1.Final/quarkus-cli-2.15.1.Final.zip' `
    -Checksum 'b4dd23f78354e4e925dbd6107fd2ea42107d740d9dec8585e25ca267df23d35e' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
