# Generated with JReleaser 1.3.0 at 2025-07-17T18:28:15.643459999Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.24.4'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.24.4/quarkus-cli-3.24.4.zip' `
    -Checksum 'cd92aa24d471dab8a3e0579f45aaead1bfe9c5230d831016f32f166051ad193b' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
