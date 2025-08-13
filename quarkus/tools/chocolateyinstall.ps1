# Generated with JReleaser 1.3.0 at 2025-08-13T16:32:42.846551224Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.25.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.25.3/quarkus-cli-3.25.3.zip' `
    -Checksum 'd1427fc6b7a9da7b8109353e51976118d6c5ee13618dca91d2c456a00a2a77cd' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
