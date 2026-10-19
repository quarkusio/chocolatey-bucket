# Generated with JReleaser 1.3.0 at 2026-10-19T12:44:12.438293436Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.33.4.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.33.4.1/quarkus-cli-3.33.4.1.zip' `
    -Checksum '8176b2c1d7f5bd99be29d5315195c405fcea5c2b51d2b5f9692bb9b0055b3f75' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
