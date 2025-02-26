# Generated with JReleaser 1.3.0 at 2025-02-26T15:32:51.349135147Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.19.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.19.1/quarkus-cli-3.19.1.zip' `
    -Checksum 'd2bc7fc3e256ffc30c7ee268d8adcb83cae106c4a542d08ec74b5c512cb1a344' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
