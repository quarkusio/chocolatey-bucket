# Generated with JReleaser 1.3.0 at 2024-08-09T14:24:10.965108703Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.13.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.13.2/quarkus-cli-3.13.2.zip' `
    -Checksum 'dae3eb5d558c7d155d65c09ce508077e6caa2ffced614d56848fb274c9024b75' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
