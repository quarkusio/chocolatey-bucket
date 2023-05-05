# Generated with JReleaser 1.3.0 at 2023-05-05T20:31:33.32794+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.16.7.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.16.7.Final/quarkus-cli-2.16.7.Final.zip' `
    -Checksum 'daa019391deb7bfefda7aeb811707b9e3e8f8ebccfc47a1faa0331c4fec34771' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
