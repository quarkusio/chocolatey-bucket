# Generated with JReleaser 1.3.0 at 2025-10-29T11:57:11.36310087Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.29.0'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.29.0/quarkus-cli-3.29.0.zip' `
    -Checksum '89759842d2224d06a3f8270c92738cdc89a24d1fb4038baa4af937800a76b245' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
