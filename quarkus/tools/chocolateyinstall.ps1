# Generated with JReleaser 1.3.0 at 2026-02-04T16:02:45.416277388Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.31.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.31.2/quarkus-cli-3.31.2.zip' `
    -Checksum '3ca738f93ad49cbe8854ef7d87a60e8ef6bfa0b4fade4bf841e38e6058360857' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
