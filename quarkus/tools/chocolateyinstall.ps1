# Generated with JReleaser 1.3.0 at 2024-01-10T17:33:18.147088Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.6.5'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.6.5/quarkus-cli-3.6.5.zip' `
    -Checksum '80337b2935a4b59418e84cbd13f486cf8316c6ab97357eb7c4fbcc5815f7fc87' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
