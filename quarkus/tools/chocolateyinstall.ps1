# Generated with JReleaser 1.3.0 at 2026-04-22T15:41:31.824329004Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.34.6'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.34.6/quarkus-cli-3.34.6.zip' `
    -Checksum '4c097a2c47f17f4fba6bc1402be84affe1d533e69e79ef42681a6578e481762b' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
