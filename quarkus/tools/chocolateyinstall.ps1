# Generated with JReleaser 1.3.0 at 2025-08-08T16:48:04.143874116Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.25.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.25.2/quarkus-cli-3.25.2.zip' `
    -Checksum '011c06c72f236e74c7c1fa1a9de6f3288fe9718487c516a5b86529e8de8ad1f5' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
