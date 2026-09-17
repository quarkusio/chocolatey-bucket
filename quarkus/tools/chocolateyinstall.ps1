# Generated with JReleaser 1.3.0 at 2026-09-17T09:47:44.405015564Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.39.4'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.39.4/quarkus-cli-3.39.4.zip' `
    -Checksum 'b5c8f8f08aa003d0f677a909af41143c9befb66ea089d8337324e93420c939bd' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
