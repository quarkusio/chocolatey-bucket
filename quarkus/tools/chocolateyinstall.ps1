# Generated with JReleaser 1.3.0 at 2025-09-24T12:37:18.23197528Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.27.0'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.27.0/quarkus-cli-3.27.0.zip' `
    -Checksum '41f5a167fd65f643a02d186be2f053053b31d09a4c83a97bf58c6b084357a7c0' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
