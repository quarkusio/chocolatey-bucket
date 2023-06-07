# Generated with JReleaser 1.3.0 at 2023-06-07T17:41:48.223536+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.1.1.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.1.1.Final/quarkus-cli-3.1.1.Final.zip' `
    -Checksum 'dfbd54ea9ab6e581caaa52f7d3eda45a9460dcad66e82b3b863bef462403e40f' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
