# Generated with JReleaser 1.3.0 at 2024-09-25T09:02:00.891006633Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.15.0'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.15.0/quarkus-cli-3.15.0.zip' `
    -Checksum '293e611cd0443f47f43c663526f309e6f87fee58182abbd3f778ca3278e4b000' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
