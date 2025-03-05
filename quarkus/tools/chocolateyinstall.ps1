# Generated with JReleaser 1.3.0 at 2025-03-05T15:42:30.994218915Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.19.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.19.2/quarkus-cli-3.19.2.zip' `
    -Checksum '19672c8e8a386f4b52ffed546bc37f9d856385f0a19d8d0dbeaa29a60bb1e2dc' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
