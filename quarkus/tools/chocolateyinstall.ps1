# Generated with JReleaser 1.1.0 at 2022-08-31T12:28:46.60315+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.12.0.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.12.0.Final/quarkus-cli-2.12.0.Final.zip' `
    -Checksum '7b9c3cf4ebd90434e1b043d6da1a7481f03e9c75437f0486ceb2821f280ce36c' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
