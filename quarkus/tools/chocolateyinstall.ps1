# Generated with JReleaser 1.3.0 at 2025-04-09T14:34:01.355741106Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.21.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.21.2/quarkus-cli-3.21.2.zip' `
    -Checksum '4173eafec09e39ec16e3e957189886e01ab6dc3017197a9f608be3c64166a1fe' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
