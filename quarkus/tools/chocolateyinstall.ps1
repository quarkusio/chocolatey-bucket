# Generated with JReleaser 1.1.0 at 2022-09-13T18:56:59.722551+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.12.2.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.12.2.Final/quarkus-cli-2.12.2.Final.zip' `
    -Checksum '52f6acdc177612bd22df971b8122ca2f3a72f177e17f3a8badaf5aab14d87dce' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
