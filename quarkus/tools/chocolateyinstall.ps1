# Generated with JReleaser 1.3.0 at 2024-11-20T16:00:57.089835663Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.16.4'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.16.4/quarkus-cli-3.16.4.zip' `
    -Checksum '0e5ddcaacb2a49e9f2c47b6279be862264aa1e039be74950f250fe5e249cdd1c' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
