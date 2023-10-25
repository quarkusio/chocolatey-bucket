# Generated with JReleaser 1.3.0 at 2023-10-25T14:34:54.423885+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.5.0'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.5.0/quarkus-cli-3.5.0.zip' `
    -Checksum '075bcd3b5efc63ceb704af7e6ce71332323559c3922af731d8530b67eff39356' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
