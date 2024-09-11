# Generated with JReleaser 1.3.0 at 2024-09-11T15:14:35.386936131Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.14.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.14.3/quarkus-cli-3.14.3.zip' `
    -Checksum 'e8ff1a12492ec16b2c8851f780ebd7b9646d1c5180a7e82d70d70c54477eb23d' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
