# Generated with JReleaser 1.3.0 at 2025-09-24T05:58:44.515753933Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.20.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.20.3/quarkus-cli-3.20.3.zip' `
    -Checksum 'd264eac874cb51d9485ae7cfbeab8d9ac062e31d63b31010b02ead66814b1ee7' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
