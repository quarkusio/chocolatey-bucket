# Generated with JReleaser 1.3.0 at 2026-01-21T12:07:52.359661086Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.27.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.27.2/quarkus-cli-3.27.2.zip' `
    -Checksum 'f1626781ddedc23058c99e65425b7ff5a8852ddeae7f24713370011e3d6ff333' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
