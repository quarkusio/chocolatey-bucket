# Generated with JReleaser 1.0.0 at 2022-05-17T16:53:28.483329+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.9.1.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.9.1.Final/quarkus-cli-2.9.1.Final.zip' `
    -Checksum '093774e3a3001ecd8bd966a1c058400460beba154ee0ce86f63c42056b930a88' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
