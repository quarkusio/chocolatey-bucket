# Generated with JReleaser 1.3.0 at 2026-01-07T13:16:58.994804745Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.30.6'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.30.6/quarkus-cli-3.30.6.zip' `
    -Checksum 'acdacec895999b26644c8ba5b068187c62b6c72c0ffcf3ecd9f26d3c7b86e306' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
