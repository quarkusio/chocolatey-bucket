# Generated with JReleaser 1.3.0 at 2025-05-20T09:03:38.859895899Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.15.5'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.15.5/quarkus-cli-3.15.5.zip' `
    -Checksum '872067b9c3aa67432324fe86588e62483b8235b523baf76467ad5229a32bdd92' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
