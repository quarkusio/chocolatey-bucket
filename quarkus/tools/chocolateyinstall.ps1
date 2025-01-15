# Generated with JReleaser 1.3.0 at 2025-01-15T16:33:25.895802239Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.17.7'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.17.7/quarkus-cli-3.17.7.zip' `
    -Checksum '88d8cbf2d0eb623f13850fdc0e06ee41e0144ccfc9e02000d1bbe76bdb4da994' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
