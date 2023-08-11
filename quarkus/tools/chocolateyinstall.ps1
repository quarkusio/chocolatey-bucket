# Generated with JReleaser 1.3.0 at 2023-08-11T20:57:07.583115+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.2.4.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.2.4.Final/quarkus-cli-3.2.4.Final.zip' `
    -Checksum '08bd77b31c56a21dc5163983d16bfe7fc2f4a9481e388365de6c0b353d5bb033' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
