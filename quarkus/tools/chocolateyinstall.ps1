# Generated with JReleaser 1.3.0 at 2024-09-26T07:56:19.971770936Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.15.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.15.1/quarkus-cli-3.15.1.zip' `
    -Checksum '361b52ced2c6b94c623029121baf1d6b3c9261b6ab0508edb3c1b2ec1383bcbf' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
