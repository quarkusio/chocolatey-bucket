# Generated with JReleaser 1.3.0 at 2026-01-23T11:16:12.13304458Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.30.8'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.30.8/quarkus-cli-3.30.8.zip' `
    -Checksum 'd4f76444a4e4021c765ba501fd02f65cd91ce14ed758db9a1bc87b5103e4a45a' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
