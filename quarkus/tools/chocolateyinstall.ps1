# Generated with JReleaser 1.3.0 at 2024-04-16T19:16:29.34091Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.2.12.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.2.12.Final/quarkus-cli-3.2.12.Final.zip' `
    -Checksum '17f144012b62a7b578116a7af1ddc5097dda1f810ee2370110f8c93990e2984e' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
