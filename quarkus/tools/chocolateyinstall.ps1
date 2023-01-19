# Generated with JReleaser 1.3.0 at 2023-01-19T17:37:16.71859+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.13.7.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.13.7.Final/quarkus-cli-2.13.7.Final.zip' `
    -Checksum 'ca50bc9f4ad980b5216682f7de72d1236e26e1084e16c0bc7deb09ff02e93017' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
