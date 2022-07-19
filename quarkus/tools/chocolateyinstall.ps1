# Generated with JReleaser 1.1.0 at 2022-07-19T19:06:27.529081+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.10.3.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.10.3.Final/quarkus-cli-2.10.3.Final.zip' `
    -Checksum '1668386cdcc1af098df39d05db6efba27ef98fd10729c121c597b0c95d340061' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
