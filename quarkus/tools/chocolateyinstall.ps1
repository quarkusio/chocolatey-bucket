# Generated with JReleaser 1.3.0 at 2023-05-25T13:42:36.184556+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.0.4.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.0.4.Final/quarkus-cli-3.0.4.Final.zip' `
    -Checksum 'bb99e5d88d77aadf4696441851c51b4119b9c04be96022e1f69818e1db6ebbee' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
