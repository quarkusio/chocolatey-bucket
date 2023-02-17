# Generated with JReleaser 1.3.0 at 2023-02-17T09:56:35.482082+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.16.3.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.16.3.Final/quarkus-cli-2.16.3.Final.zip' `
    -Checksum 'cf6a49061f688b80945adb66a88086d6fe8432b8b18f0109b16c5a821180dad2' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
