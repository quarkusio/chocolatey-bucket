# Generated with JReleaser 1.3.0 at 2024-03-27T15:04:00.019267383Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.9.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.9.1/quarkus-cli-3.9.1.zip' `
    -Checksum '17e24f3e1c3ee4b6e1db9a01123d1a148da7f3fa09f33fa4f8c536e4b92d9ce3' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
