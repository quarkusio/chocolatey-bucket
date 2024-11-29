# Generated with JReleaser 1.3.0 at 2024-11-29T08:51:58.113617151Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.17.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.17.2/quarkus-cli-3.17.2.zip' `
    -Checksum '48fd6c90c60763e423347d6225783f0500e2cd5c61709e4697372d3b29a6d66c' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
