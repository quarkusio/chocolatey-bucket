# Generated with JReleaser 1.3.0 at 2026-05-04T16:14:52.4707993Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.35.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.35.2/quarkus-cli-3.35.2.zip' `
    -Checksum 'bc3d52b45949e8de2079a33c1be13fe9da3dac9f3a21d1b5a0d034629f53e2d9' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
