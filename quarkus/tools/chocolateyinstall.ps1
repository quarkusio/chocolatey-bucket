# Generated with JReleaser 1.3.0 at 2023-07-05T15:31:14.410227+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.2.0.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.2.0.Final/quarkus-cli-3.2.0.Final.zip' `
    -Checksum '0797dd4b5313ce9677cfa4f77ad154a5b93d20dd189fd7200e0a9533b56ea91c' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
