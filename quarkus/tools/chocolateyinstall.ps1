# Generated with JReleaser 1.3.0 at 2022-11-25T18:11:23.449599+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.13.5.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.13.5.Final/quarkus-cli-2.13.5.Final.zip' `
    -Checksum 'd41f92fc113c0ac5da767586e134d573401384be3a2414589946cacfd2188897' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
