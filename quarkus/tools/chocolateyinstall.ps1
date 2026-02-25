# Generated with JReleaser 1.3.0 at 2026-02-25T15:21:41.250058862Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.32.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.32.1/quarkus-cli-3.32.1.zip' `
    -Checksum '3381bda988a043698996a0b89fef59175640085e0ace3be633bb1569478ce554' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
