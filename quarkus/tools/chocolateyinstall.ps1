# Generated with JReleaser 1.3.0 at 2026-08-04T16:39:54.277645074Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.27.5.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.27.5.1/quarkus-cli-3.27.5.1.zip' `
    -Checksum '0f6441a6818dd149e46b973aa71d7ec7ed28b348c071cce2fb62af1c43ef4730' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
