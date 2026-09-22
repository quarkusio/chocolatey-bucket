# Generated with JReleaser 1.3.0 at 2026-09-22T12:41:30.152012023Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.33.3.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.33.3.3/quarkus-cli-3.33.3.3.zip' `
    -Checksum '2fe9d1d7574b1dd60924ae61531f3372cecdf85ac113f301a9f42cd4db576632' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
