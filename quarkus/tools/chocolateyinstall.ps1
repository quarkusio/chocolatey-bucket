# Generated with JReleaser 1.3.0 at 2025-07-23T08:26:55.845838723Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.15.6'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.15.6/quarkus-cli-3.15.6.zip' `
    -Checksum '11b77b8b61a957be1cbd814ba4cf027be1e764df5a9638892abbd5dba36aa888' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
