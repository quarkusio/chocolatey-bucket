# Generated with JReleaser 1.1.0 at 2022-08-24T14:08:55.066194+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.11.3.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.11.3.Final/quarkus-cli-2.11.3.Final.zip' `
    -Checksum '7e91f9d278d93b33ad78bffde2188ec6288f8a33083adc1620a9310abfb3a070' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
