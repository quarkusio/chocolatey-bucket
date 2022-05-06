# Generated with JReleaser 1.0.0 at 2022-05-06T19:36:17.481013+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.8.3.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.8.3.Final/quarkus-cli-2.8.3.Final.zip' `
    -Checksum 'fb8b4ff0e08c24e3f6580c0c561a89f23cb9f6485ccba6e40a803e3465bf68cd' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
