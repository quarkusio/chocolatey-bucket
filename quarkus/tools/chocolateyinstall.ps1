# Generated with JReleaser 1.1.0 at 2022-09-21T00:54:08.406815+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.12.3.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.12.3.Final/quarkus-cli-2.12.3.Final.zip' `
    -Checksum '9d8a514dff2abcb6b19aac34761d294a3f8185a832d6aa5ec32f5f8f0f7b69c2' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
