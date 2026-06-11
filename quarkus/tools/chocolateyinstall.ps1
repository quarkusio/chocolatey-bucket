# Generated with JReleaser 1.3.0 at 2026-06-11T09:50:14.934746668Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.36.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.36.2/quarkus-cli-3.36.2.zip' `
    -Checksum '2e6d7d4361e06468ce431ad24d146d004cb8615115d64e16cdd4e4de7b41ca6b' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
