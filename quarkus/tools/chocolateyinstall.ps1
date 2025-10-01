# Generated with JReleaser 1.3.0 at 2025-10-01T17:02:43.13644025Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.28.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.28.2/quarkus-cli-3.28.2.zip' `
    -Checksum 'a20c43fe4fba0c9eb15128ad13f00675c676474941fbedfef4974527316fa997' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
