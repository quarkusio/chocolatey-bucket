# Generated with JReleaser 1.3.0 at 2024-07-17T13:58:44.319796737Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.12.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.12.3/quarkus-cli-3.12.3.zip' `
    -Checksum '41103dbfe39ab5559509351da05e4828d827df1ca9afd8f60f60b3c81cfb4330' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
