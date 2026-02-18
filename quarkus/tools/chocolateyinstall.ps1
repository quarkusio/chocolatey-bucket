# Generated with JReleaser 1.3.0 at 2026-02-18T16:42:21.502080611Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.31.4'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.31.4/quarkus-cli-3.31.4.zip' `
    -Checksum '93cf975d6ed6ff5b2043356d53f32a62c5bc80651ec579afe39d48a75b6a0842' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
