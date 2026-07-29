# Generated with JReleaser 1.3.0 at 2026-07-29T07:40:24.128531289Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.27.5'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.27.5/quarkus-cli-3.27.5.zip' `
    -Checksum 'ab5a39f246f0de1962b2f7a8f2dfca07c74efc2851c87a657411d92ab5c7ffec' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
