# Generated with JReleaser 1.3.0 at 2025-07-23T12:02:35.650855703Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.24.5'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.24.5/quarkus-cli-3.24.5.zip' `
    -Checksum 'f24fbee0b1779cdb0ca1ca15c4a86f871c2016dce03ddc23ed74233257781257' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
