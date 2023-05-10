# Generated with JReleaser 1.3.0 at 2023-05-10T17:07:48.34383+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.0.3.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.0.3.Final/quarkus-cli-3.0.3.Final.zip' `
    -Checksum '365afaa9b8699e33725c2e395a6e04922356d99cf636d6792e62db33a4e53e57' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
