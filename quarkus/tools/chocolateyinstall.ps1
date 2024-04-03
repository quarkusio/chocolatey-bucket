# Generated with JReleaser 1.3.0 at 2024-04-03T16:08:01.031418301Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.9.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.9.2/quarkus-cli-3.9.2.zip' `
    -Checksum '73d4ad71b6d0370fe3d542056da5cd7c6f481f388d3ae31b880827ac2880576f' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
