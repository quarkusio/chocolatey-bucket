# Generated with JReleaser 1.3.0 at 2023-10-17T17:10:41.556033+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.16.12.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.16.12.Final/quarkus-cli-2.16.12.Final.zip' `
    -Checksum 'a7f0948a0656cce95c9c060e3d73b20c9cab5ee84603b445611fd67a8a683da8' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
