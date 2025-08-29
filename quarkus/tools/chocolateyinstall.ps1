# Generated with JReleaser 1.3.0 at 2025-08-29T13:35:20.922756959Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.20.2.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.20.2.2/quarkus-cli-3.20.2.2.zip' `
    -Checksum '0573f723658b059be056f49eb6a4dd91713a54cc0f473ea8522c39e1c4b432b5' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
