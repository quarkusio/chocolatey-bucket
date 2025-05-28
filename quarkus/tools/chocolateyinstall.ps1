# Generated with JReleaser 1.3.0 at 2025-05-28T09:21:34.398754868Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.23.0'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.23.0/quarkus-cli-3.23.0.zip' `
    -Checksum '49a4f665179c0b28f708a83991ea58ebc3f2109f8d88b6ccb41f7a44c8a4fd83' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
