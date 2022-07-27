# Generated with JReleaser 1.1.0 at 2022-07-27T14:58:38.984822+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.10.4.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.10.4.Final/quarkus-cli-2.10.4.Final.zip' `
    -Checksum 'c1bbe082e57293d3b6ebaf03cdb0e0decc82561b0e26e7c40cb3b77c7df225b9' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
