# Generated with JReleaser 1.3.0 at 2022-12-06T18:16:07.805118+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.14.3.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.14.3.Final/quarkus-cli-2.14.3.Final.zip' `
    -Checksum 'c39d7194af860db2e04579c66e2f8e7e21c331cf2624eab9ab908c7ad5b11ca1' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
