# Generated with JReleaser 1.3.0 at 2026-07-15T16:53:34.431262456Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.37.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.37.3/quarkus-cli-3.37.3.zip' `
    -Checksum 'ba0fb041bca19ae24f45ab34047ac463c094bb9ea9c4e90d78aa43e2d4796c8f' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
