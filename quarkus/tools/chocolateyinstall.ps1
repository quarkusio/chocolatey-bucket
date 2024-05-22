# Generated with JReleaser 1.3.0 at 2024-05-22T16:29:38.251655252Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.10.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.10.2/quarkus-cli-3.10.2.zip' `
    -Checksum 'fdc9b0bfcfd27cc8bd0b319ac3ae60ed4e505572e337a32ddd564a1f0861c82a' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
