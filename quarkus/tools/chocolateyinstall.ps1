# Generated with JReleaser 1.3.0 at 2024-08-28T16:15:24.596564024Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.14.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.14.1/quarkus-cli-3.14.1.zip' `
    -Checksum '10b0e190d5cfd6e057db37e3f6c7b8f7b6862d7d3e960ea7d1bf2c35eadd9db0' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
