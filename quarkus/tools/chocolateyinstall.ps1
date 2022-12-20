# Generated with JReleaser 1.3.0 at 2022-12-20T12:07:03.076671+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.13.6.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.13.6.Final/quarkus-cli-2.13.6.Final.zip' `
    -Checksum '37e1469bc608f97f1690d256a6d4f7a60e080f26cab77b458c861f4408ef76e6' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
