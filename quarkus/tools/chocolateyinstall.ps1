# Generated with JReleaser 1.3.0 at 2025-11-19T10:04:40.366482637Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.20.4'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.20.4/quarkus-cli-3.20.4.zip' `
    -Checksum '0cc643dca137dab6b0f28cfca49c6cf688cec66d85c8e8faddf766ae3d19acbd' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
