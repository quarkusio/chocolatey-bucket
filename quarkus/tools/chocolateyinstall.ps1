# Generated with JReleaser 1.3.0 at 2024-03-14T20:53:38.13101Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.2.11.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.2.11.Final/quarkus-cli-3.2.11.Final.zip' `
    -Checksum '5b1e4b230d8cb56cd0eb5801dd5b550834ed59bc025a88b71f28ba40bb02656b' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
