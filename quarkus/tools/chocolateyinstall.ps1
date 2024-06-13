# Generated with JReleaser 1.3.0 at 2024-06-13T14:04:14.666497893Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.11.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.11.2/quarkus-cli-3.11.2.zip' `
    -Checksum 'b3faacfc12143399d6fb672ff47a37d5f29f66d641eb925196602c56f2bee43a' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
