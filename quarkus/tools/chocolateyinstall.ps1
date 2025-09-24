# Generated with JReleaser 1.3.0 at 2025-09-24T14:06:11.812240638Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.28.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.28.1/quarkus-cli-3.28.1.zip' `
    -Checksum '42fd42fc0f7112da4eb9bfb124f926bcc85f13717c98239f388004733c0cd575' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
