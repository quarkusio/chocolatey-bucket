# Generated with JReleaser 1.3.0 at 2023-11-09T10:10:00.038482+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.5.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.5.1/quarkus-cli-3.5.1.zip' `
    -Checksum 'cc61b7167fa8bec69a6e88cc535289fd66053ba1526408899579676d387ea81c' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
