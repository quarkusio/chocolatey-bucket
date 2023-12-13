# Generated with JReleaser 1.3.0 at 2023-12-13T07:46:27.180474Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.6.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.6.3/quarkus-cli-3.6.3.zip' `
    -Checksum '4b2e0185c276b80b3af9f0d7356044cc5a4e6c57f4d62b71809ec65e8adb8468' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
