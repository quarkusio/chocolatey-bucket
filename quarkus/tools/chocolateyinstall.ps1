# Generated with JReleaser 1.3.0 at 2025-04-30T15:10:43.496718372Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.22.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.22.1/quarkus-cli-3.22.1.zip' `
    -Checksum '2dbc7275700d551da4a199fbe1c5563ace7f230205d5b54347c85908e90154ba' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
