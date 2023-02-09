# Generated with JReleaser 1.3.0 at 2023-02-09T13:34:12.159747+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.16.2.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.16.2.Final/quarkus-cli-2.16.2.Final.zip' `
    -Checksum 'd34f0e86cc00dcfe8c44855479b9a3da284cd0e6db28cb637d4d6fe8b626edec' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
