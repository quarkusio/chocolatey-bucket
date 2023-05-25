# Generated with JReleaser 1.3.0 at 2023-05-25T19:33:53.869148+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.13.8.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.13.8.Final/quarkus-cli-2.13.8.Final.zip' `
    -Checksum '2ef65452becde97d054a6e5b1570bd4bb720c401d83e470af03f5f0ae21a1fe3' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
