# Generated with JReleaser 1.3.0 at 2023-01-26T19:14:20.088763+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.7.7.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.7.7.Final/quarkus-cli-2.7.7.Final.zip' `
    -Checksum '00c8425f599fe6227b02510e6cfa79d90db70dae71bfc1963ce56475e683a96a' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
