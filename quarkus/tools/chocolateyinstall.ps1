# Generated with JReleaser 1.3.0 at 2025-06-04T22:47:02.124541342Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.23.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.23.2/quarkus-cli-3.23.2.zip' `
    -Checksum 'c094edb7519aecbe0cb480b1476017e60586621eaa5651cf32ee406546c39d1f' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
