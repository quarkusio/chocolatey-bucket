# Generated with JReleaser 1.3.0 at 2023-11-08T17:41:16.418488+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.2.8.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.2.8.Final/quarkus-cli-3.2.8.Final.zip' `
    -Checksum '108a797ded25b1b92d84980172a251bb757d0468b549942c876fa08fb5fb73b4' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
