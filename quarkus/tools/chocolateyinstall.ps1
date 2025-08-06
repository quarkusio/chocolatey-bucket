# Generated with JReleaser 1.3.0 at 2025-08-06T21:06:12.44180167Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.25.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.25.1/quarkus-cli-3.25.1.zip' `
    -Checksum 'df7e20cb3f6f4ec14d772ceb46cf3ee04e27f7f3381e002bc481eece6f457574' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
