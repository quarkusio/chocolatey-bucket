# Generated with JReleaser 1.3.0 at 2026-08-13T16:21:20.797802496Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.38.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.38.2/quarkus-cli-3.38.2.zip' `
    -Checksum '695942983e58b09d88f9fb78d888ba067ff4a75a0ab7c38d933328fa6493cb86' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
