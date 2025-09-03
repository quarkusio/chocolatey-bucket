# Generated with JReleaser 1.3.0 at 2025-09-03T15:33:01.261818836Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.26.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.26.2/quarkus-cli-3.26.2.zip' `
    -Checksum '52e4641dd066c1fcd7a2b7c02a98de7fc52d060a310a6870266bc4035e9f54fb' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
