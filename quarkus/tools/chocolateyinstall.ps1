# Generated with JReleaser 1.3.0 at 2025-08-18T11:33:55.089746549Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.15.6.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.15.6.1/quarkus-cli-3.15.6.1.zip' `
    -Checksum '4e2aae8ebe54bbe637bb8b121778ff3fb06bc37fa9c465ddfa42027c7909c8f9' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
