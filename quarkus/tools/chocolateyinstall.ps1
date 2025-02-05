# Generated with JReleaser 1.3.0 at 2025-02-05T14:53:43.375853149Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.18.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.18.2/quarkus-cli-3.18.2.zip' `
    -Checksum '0a5c69c35bb0047dd21ec580f3639181a9dcfb10743eec7e016563db182e4e7b' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
