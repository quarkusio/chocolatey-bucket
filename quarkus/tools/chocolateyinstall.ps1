# Generated with JReleaser 1.3.0 at 2023-07-19T19:10:51.400757+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.2.1.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.2.1.Final/quarkus-cli-3.2.1.Final.zip' `
    -Checksum 'a6f88fb9a46b6efb8f75afc0ff527f8adff758444cf8c7488bd261d66b8ec5f9' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
