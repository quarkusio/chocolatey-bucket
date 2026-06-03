# Generated with JReleaser 1.3.0 at 2026-06-03T11:48:35.969893204Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.36.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.36.1/quarkus-cli-3.36.1.zip' `
    -Checksum '7d80743197fb8167fbcd237775e8c59a0a9e070ebddf323d36f92d75c5779212' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
