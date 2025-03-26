# Generated with JReleaser 1.3.0 at 2025-03-26T11:51:01.154808434Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.21.0'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.21.0/quarkus-cli-3.21.0.zip' `
    -Checksum '18049235a4787279461858a289abd20565bdf97341ab6e97a5d8d6a7c9ae2049' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
