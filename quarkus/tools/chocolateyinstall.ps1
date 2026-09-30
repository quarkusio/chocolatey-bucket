# Generated with JReleaser 1.3.0 at 2026-09-30T09:33:21.794711146Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.27.6'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.27.6/quarkus-cli-3.27.6.zip' `
    -Checksum 'feda5d05fa67fa0090044a8c0e5c55063dd06390c5b3d54eaef23447bf33385c' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
