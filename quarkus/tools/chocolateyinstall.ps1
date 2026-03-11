# Generated with JReleaser 1.3.0 at 2026-03-11T16:15:30.404183157Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.32.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.32.3/quarkus-cli-3.32.3.zip' `
    -Checksum 'ab0f5de976ec2fc51b05e9adb734c70e8c9ae59c6cd402205d3e224f52e100da' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
