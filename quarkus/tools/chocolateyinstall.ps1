# Generated with JReleaser 1.3.0 at 2025-04-02T19:17:44.528086469Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.21.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.21.1/quarkus-cli-3.21.1.zip' `
    -Checksum 'a1d5e07907b76dc2b8e2403cd377de594531c0e7419eaff25e6fe5d82e6c1bef' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
