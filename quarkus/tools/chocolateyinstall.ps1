# Generated with JReleaser 1.3.0 at 2024-02-08T15:15:55.357747317Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.7.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.7.2/quarkus-cli-3.7.2.zip' `
    -Checksum '0c838cdd7af526026b21a4845fd64d98c29ec54c49bb6cbcd8ab004fdaeeddad' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
