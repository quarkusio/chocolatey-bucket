# Generated with JReleaser 1.3.0 at 2024-07-03T17:35:53.090596555Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.12.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.12.1/quarkus-cli-3.12.1.zip' `
    -Checksum 'fa4a8523e06a0b555601c1340afbde63e0d2eb2a7b7d5356e4312dbd584d27ec' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
