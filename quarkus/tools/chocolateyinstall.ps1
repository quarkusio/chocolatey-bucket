# Generated with JReleaser 1.3.0 at 2023-08-26T10:39:52.412794+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.16.10.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.16.10.Final/quarkus-cli-2.16.10.Final.zip' `
    -Checksum 'ffd47d98b2af4509c4e5ce1f7fcef84a4dddf7e8ea68a5a4cf184a8507e68333' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
