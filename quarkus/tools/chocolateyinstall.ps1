# Generated with JReleaser 1.0.0 at 2022-04-12T11:37:20.466288+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.8.0.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.8.0.Final/quarkus-cli-2.8.0.Final.zip' `
    -Checksum 'd69f9b67e0d4221ef7a0bc23ad96b6f0c6fb7a583bdb5612354b92485acfd350' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
