# Generated with JReleaser 1.3.0 at 2023-09-14T22:53:11.70132+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.3.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.3.3/quarkus-cli-3.3.3.zip' `
    -Checksum '2a5349a9275d2a7557f390b0aef2d426960d82686920767a684bcf72040ac9d7' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
