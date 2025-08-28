# Generated with JReleaser 1.3.0 at 2025-08-28T11:23:09.606859838Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.26.0'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.26.0/quarkus-cli-3.26.0.zip' `
    -Checksum '04f1ab05717757d4725046aae9d5fed398d7426836bb5f21f020db9130fd4275' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
