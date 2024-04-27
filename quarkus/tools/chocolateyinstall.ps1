# Generated with JReleaser 1.3.0 at 2024-04-27T13:57:27.36355644Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.9.5'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.9.5/quarkus-cli-3.9.5.zip' `
    -Checksum '4e301fe85c289cd04ffe9d67ac82dc7833d9caff60bf9036bb4b43f1f15c01c5' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
