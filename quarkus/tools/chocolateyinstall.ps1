# Generated with JReleaser 1.3.0 at 2025-09-24T05:54:08.714801603Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.15.7'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.15.7/quarkus-cli-3.15.7.zip' `
    -Checksum '0d78c4dd9c1fd817203f2c71db9e0a777440496998583200ab01b0685d3b0960' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
