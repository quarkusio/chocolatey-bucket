# Generated with JReleaser 1.3.0 at 2026-10-19T12:33:38.346846024Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.27.6.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.27.6.1/quarkus-cli-3.27.6.1.zip' `
    -Checksum 'ede6c0b82f4bac0a3918e4f3fd979d7fcfb15ce15541da3e29927db449c83676' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
