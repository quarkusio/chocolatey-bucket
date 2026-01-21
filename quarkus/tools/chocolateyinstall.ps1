# Generated with JReleaser 1.3.0 at 2026-01-21T10:38:17.448303518Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.20.5'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.20.5/quarkus-cli-3.20.5.zip' `
    -Checksum 'b1045b0c53741542759999273f438c0c3c65751609cd264ed9e532e3ce8fad13' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
