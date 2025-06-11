# Generated with JReleaser 1.3.0 at 2025-06-11T16:05:28.629045902Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.23.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.23.3/quarkus-cli-3.23.3.zip' `
    -Checksum 'ac856ebd7335fcc4c52bfa08a72bfd8f8c6d72ef3dc57d88fe7ef77382990bf4' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
