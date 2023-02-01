# Generated with JReleaser 1.3.0 at 2023-02-01T17:52:13.29125+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.16.1.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.16.1.Final/quarkus-cli-2.16.1.Final.zip' `
    -Checksum 'c1d6d63d0e60d16925170160f6d7aa43e3556559144a623b4100f6a9aa6e39ed' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
