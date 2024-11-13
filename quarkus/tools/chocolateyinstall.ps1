# Generated with JReleaser 1.3.0 at 2024-11-13T17:27:20.824244553Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.16.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.16.3/quarkus-cli-3.16.3.zip' `
    -Checksum 'a84adadcb56a3625c6d6063c5d09c0d7233e77b12a58f6802ae62e071c759e90' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
