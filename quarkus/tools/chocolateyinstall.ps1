# Generated with JReleaser 1.3.0 at 2026-06-18T07:04:08.232393153Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.36.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.36.3/quarkus-cli-3.36.3.zip' `
    -Checksum '870f00c2a8fd6f3bee51fef429554448fdd75de91643718109fe32f2385aa0c7' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
