# Generated with JReleaser 1.3.0 at 2024-02-28T15:53:45.955263453Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.8.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.8.1/quarkus-cli-3.8.1.zip' `
    -Checksum '73cb5b0f16ff00fd0b3f79301b621ae73f2333b277a8a4de37ecac8e37ea83ed' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
