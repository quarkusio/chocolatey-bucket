# Generated with JReleaser 1.3.0 at 2025-12-10T15:26:36.576483409Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.30.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.30.3/quarkus-cli-3.30.3.zip' `
    -Checksum '18bd4207aa1359bea0a231316f276588c1f9ceb2cc17c69674681535ae99d012' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
