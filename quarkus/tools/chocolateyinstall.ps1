# Generated with JReleaser 1.3.0 at 2026-03-25T11:22:52.353197258Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.20.6'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.20.6/quarkus-cli-3.20.6.zip' `
    -Checksum '97a55d3b5a5c5b02f2ea081a0500f77a3f06f5f10fbd39b763c3633e3bf67f16' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
