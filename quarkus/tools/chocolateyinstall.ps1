# Generated with JReleaser 1.3.0 at 2023-07-24T09:16:44.321617+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.2.2.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.2.2.Final/quarkus-cli-3.2.2.Final.zip' `
    -Checksum '978232e59455a40bf441c3c918d1c9912684cabc92f2023506c9f1ffa7196d4b' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
