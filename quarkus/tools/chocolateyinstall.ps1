# Generated with JReleaser 1.0.0 at 2022-04-26T18:25:03.240355+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.8.2.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.8.2.Final/quarkus-cli-2.8.2.Final.zip' `
    -Checksum '694af32cf98d586d2fc18cd047fafb5d860737901620ba4ef239e4c010c6b67d' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
