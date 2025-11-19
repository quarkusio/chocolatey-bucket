# Generated with JReleaser 1.3.0 at 2025-11-19T20:51:38.612212011Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.29.4'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.29.4/quarkus-cli-3.29.4.zip' `
    -Checksum '99ecb7be532a96f344fe14fb7ffd4f3263ac6207ac1f354d396aa9ec30a1f2ff' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
