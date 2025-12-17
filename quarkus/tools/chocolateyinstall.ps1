# Generated with JReleaser 1.3.0 at 2025-12-17T17:38:52.327541729Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.30.4'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.30.4/quarkus-cli-3.30.4.zip' `
    -Checksum '16c4ba6d225efeca6a9bb9fa6b00d9a6a422098c96f8e7aac071399ceab8ff22' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
