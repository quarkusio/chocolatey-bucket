# Generated with JReleaser 1.3.0 at 2025-03-19T16:21:18.419543164Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.19.4'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.19.4/quarkus-cli-3.19.4.zip' `
    -Checksum 'a3c2d9f78faac55ed1cf708ef3615ab0cf8483ec033cc12b8fab9ba0241d7287' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
