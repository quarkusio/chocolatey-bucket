# Generated with JReleaser 1.3.0 at 2025-04-24T07:49:10.839018508Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.21.4'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.21.4/quarkus-cli-3.21.4.zip' `
    -Checksum '826011c6989b3a24446c999799262952340b833da6b00585e3741ffb82d6fe3a' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
