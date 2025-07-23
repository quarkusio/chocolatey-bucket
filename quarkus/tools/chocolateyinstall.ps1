# Generated with JReleaser 1.3.0 at 2025-07-23T08:25:41.07012865Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.20.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.20.2/quarkus-cli-3.20.2.zip' `
    -Checksum '9189e1943d8da4e0deab31ad32078feb2888a6ef9cca320bc29e0ef0299f15e2' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
