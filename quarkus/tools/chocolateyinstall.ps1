# Generated with JReleaser 1.3.0 at 2023-01-04T18:53:57.124996+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.15.2.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.15.2.Final/quarkus-cli-2.15.2.Final.zip' `
    -Checksum 'a37569ae3f51d434020e96e5511d7a8a6032f3af71afaa49578eb7f359498e8d' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
