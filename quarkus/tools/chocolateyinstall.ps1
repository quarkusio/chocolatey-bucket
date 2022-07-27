# Generated with JReleaser 1.1.0 at 2022-07-27T16:47:44.927428+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.11.1.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.11.1.Final/quarkus-cli-2.11.1.Final.zip' `
    -Checksum '0bf30e2193f4226dd32768080072e617a0fdb07e3c3067a19daf6204df0247f9' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
