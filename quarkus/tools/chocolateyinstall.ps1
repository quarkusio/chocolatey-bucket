# Generated with JReleaser 1.3.0 at 2026-09-23T17:01:19.06818902Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.39.5'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.39.5/quarkus-cli-3.39.5.zip' `
    -Checksum '892377ca0378318039864cec4665f3c1081187c7fee91beb899dffb023b937bd' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
