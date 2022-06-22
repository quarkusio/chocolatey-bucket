# Generated with JReleaser 1.0.0 at 2022-06-22T11:03:37.056273+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.10.0.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.10.0.Final/quarkus-cli-2.10.0.Final.zip' `
    -Checksum 'd2ecee909fa8b00f0acce917940569c8d3b071c8dcc76adc007ab38a2338337e' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
