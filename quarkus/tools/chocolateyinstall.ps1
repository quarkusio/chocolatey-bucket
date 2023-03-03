# Generated with JReleaser 1.3.0 at 2023-03-03T16:20:19.015476+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.16.4.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.16.4.Final/quarkus-cli-2.16.4.Final.zip' `
    -Checksum '9709f8abde98a2fc60857cb52993c88160c599590f037577f55c39ca3e1917b7' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
