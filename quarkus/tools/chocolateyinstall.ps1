# Generated with JReleaser 1.1.0 at 2022-10-12T18:48:42.702278+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.13.2.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.13.2.Final/quarkus-cli-2.13.2.Final.zip' `
    -Checksum '088c3de568ff4cfca7c6aa18ba113ac6d38a6c8bab77c2a981e80c6bad00dd16' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
