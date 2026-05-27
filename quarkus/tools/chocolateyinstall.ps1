# Generated with JReleaser 1.3.0 at 2026-05-27T07:31:56.266504229Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.36.0'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.36.0/quarkus-cli-3.36.0.zip' `
    -Checksum 'b1c3f16756d642e75f14b633f2692381ae3311df32532f022feae8b8691db9e8' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
