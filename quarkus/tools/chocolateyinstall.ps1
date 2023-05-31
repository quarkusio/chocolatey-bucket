# Generated with JReleaser 1.3.0 at 2023-05-31T14:12:47.053906+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.1.0.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.1.0.Final/quarkus-cli-3.1.0.Final.zip' `
    -Checksum 'be82f6432137afc6e17cd53a8b3e145dacca9797dcd5fcd3bb30e82ecc53fb78' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
