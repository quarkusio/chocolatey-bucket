# Generated with JReleaser 1.0.0-M3 at 2022-03-09T21:41:27.437642+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.7.4.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.7.4.Final/quarkus-cli-2.7.4.Final.zip' `
    -Checksum 'fe70a22500c469b790ae505967fd2856b3851c2dad632a43b0d978a0c5dd0ae5' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
