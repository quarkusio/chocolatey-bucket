# Generated with JReleaser 1.3.0 at 2026-03-25T16:57:33.806219555Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.34.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.34.1/quarkus-cli-3.34.1.zip' `
    -Checksum '74760a388c973966cb7c8d0ca77bda951e60e9c997ad07ed92ebd5fa3b497a56' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
