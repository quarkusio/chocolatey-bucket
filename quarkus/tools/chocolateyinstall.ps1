# Generated with JReleaser 1.3.0 at 2026-09-10T12:13:37.032266131Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.39.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.39.3/quarkus-cli-3.39.3.zip' `
    -Checksum '37710c298be2cfd287296cfa29f3e71648a71097f37dd673bb823eeb538a0aa4' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
