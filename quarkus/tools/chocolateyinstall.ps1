# Generated with JReleaser 1.3.0 at 2024-11-27T09:58:44.642384297Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.17.0'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.17.0/quarkus-cli-3.17.0.zip' `
    -Checksum 'ce8315c9fd3ca66579d7b5fd4a1abfa5d5d9b2f26e90f5fc0fab951e6fcbd6ac' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
