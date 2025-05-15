# Generated with JReleaser 1.3.0 at 2025-05-15T09:47:27.692082879Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.22.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.22.3/quarkus-cli-3.22.3.zip' `
    -Checksum '38703b4a029fabd47144b771746b23473872ae8f634208d058beaeffe5817356' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
