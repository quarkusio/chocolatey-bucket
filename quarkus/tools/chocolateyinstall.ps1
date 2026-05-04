# Generated with JReleaser 1.3.0 at 2026-05-04T13:46:03.58620623Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.33.1.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.33.1.1/quarkus-cli-3.33.1.1.zip' `
    -Checksum 'd69de216b578d0b1069d42640279dfed6467b5d262e1f72bd8dd6d5db502e49b' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
