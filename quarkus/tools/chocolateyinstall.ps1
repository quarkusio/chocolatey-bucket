# Generated with JReleaser 1.3.0 at 2024-09-04T15:51:58.712263498Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.14.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.14.2/quarkus-cli-3.14.2.zip' `
    -Checksum '4215bbe945b2437484ce10ddce7b5a66d36a79110d8cea00e9071a4776d1b8f9' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
