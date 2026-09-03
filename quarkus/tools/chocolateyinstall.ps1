# Generated with JReleaser 1.3.0 at 2026-09-03T11:02:51.625117287Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.39.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.39.2/quarkus-cli-3.39.2.zip' `
    -Checksum '1110161fe379d019f3309f82b78fe747c97cdc92ad16c21b0d3f26eab89c8e55' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
