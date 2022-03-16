# Generated with JReleaser 1.0.0-M3 at 2022-03-16T13:39:45.790396+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.7.5.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.7.5.Final/quarkus-cli-2.7.5.Final.zip' `
    -Checksum '4259f36e0353f4883d74c02207d296342567b1ed2756662f1e3ac5926fa556ba' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
