# Generated with JReleaser 1.3.0 at 2023-01-25T16:11:37.057048+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.16.0.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.16.0.Final/quarkus-cli-2.16.0.Final.zip' `
    -Checksum '43269b231b26ba827aa9ba5b76759aba22cdf620455caeaa4b9472a42803ff0c' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
