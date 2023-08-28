# Generated with JReleaser 1.3.0 at 2023-08-28T17:48:39.310643+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.2.5.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.2.5.Final/quarkus-cli-3.2.5.Final.zip' `
    -Checksum '78df0ae33c054a5c1d95c3a9458da814af217c0ebb91fff545c6b72af9d51089' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
