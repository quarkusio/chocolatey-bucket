# Generated with JReleaser 1.3.0 at 2025-03-26T11:24:47.738097692Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.20.0'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.20.0/quarkus-cli-3.20.0.zip' `
    -Checksum 'c89d4d71c871afe17a2409451d1c2bcbb76a4a6dc5bdb011b40e5b95a8660586' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
