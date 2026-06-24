# Generated with JReleaser 1.3.0 at 2026-06-24T12:35:17.383948781Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.37.0'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.37.0/quarkus-cli-3.37.0.zip' `
    -Checksum '5ed89d4b7f90d45558ad304439add8c297f9d905884812aa1916fa0ff7d12093' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
