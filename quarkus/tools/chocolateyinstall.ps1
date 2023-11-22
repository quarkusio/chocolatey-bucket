# Generated with JReleaser 1.3.0 at 2023-11-22T13:19:42.627017+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.13.9.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.13.9.Final/quarkus-cli-2.13.9.Final.zip' `
    -Checksum '97f9b62e17828a1575a62f176fbea378a790c8c64b47679734911f150f8a3a98' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
