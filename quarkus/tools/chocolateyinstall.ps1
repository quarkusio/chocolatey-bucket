# Generated with JReleaser 1.3.0 at 2026-06-17T18:30:07.770881409Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.27.4.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.27.4.1/quarkus-cli-3.27.4.1.zip' `
    -Checksum 'abfc326328479197518c912d67e5d7e9c92a3ab7b488bdf315735c8508e75220' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
