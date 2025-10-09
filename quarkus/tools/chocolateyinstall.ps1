# Generated with JReleaser 1.3.0 at 2025-10-09T16:19:52.883141486Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.28.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.28.3/quarkus-cli-3.28.3.zip' `
    -Checksum '68241a1bd8734915e034514c5e82c05d4b1b1fb2d08cbbe1c65b2050c116c613' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
