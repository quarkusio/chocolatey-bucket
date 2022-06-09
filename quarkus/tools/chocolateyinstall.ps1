# Generated with JReleaser 1.0.0-M3 at 2022-06-09T12:58:26.774401+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.7.6.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.7.6.Final/quarkus-cli-2.7.6.Final.zip' `
    -Checksum 'b6ef47b7e68ef6baa82914568508469bebaed9c0f1d1f7976a9ab8067454e697' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
