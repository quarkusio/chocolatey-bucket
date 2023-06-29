# Generated with JReleaser 1.3.0 at 2023-06-29T09:43:24.829526+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.1.3.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.1.3.Final/quarkus-cli-3.1.3.Final.zip' `
    -Checksum '989434df62b6ce105347bddef16cf229c9c9d4b4eb0ccbf1b6a9781baa4b04c1' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
