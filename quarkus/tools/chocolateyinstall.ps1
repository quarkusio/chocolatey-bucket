# Generated with JReleaser 1.3.0 at 2025-03-18T10:44:05.85881708Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.15.4'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.15.4/quarkus-cli-3.15.4.zip' `
    -Checksum 'e384dc78529036cb1a717a6cd07435612b01a1bed2d6d438db6a2ad45b23d85b' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
