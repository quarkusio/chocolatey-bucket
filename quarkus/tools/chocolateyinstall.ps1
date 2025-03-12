# Generated with JReleaser 1.3.0 at 2025-03-12T16:24:55.349492939Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.19.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.19.3/quarkus-cli-3.19.3.zip' `
    -Checksum '2425828e4f46f717b5cceb1ba4619e59e9d2ba1cd39f8a436e942d66d3e76b51' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
