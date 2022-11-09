# Generated with JReleaser 1.3.0 at 2022-11-09T13:55:34.32203+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.14.0.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.14.0.Final/quarkus-cli-2.14.0.Final.zip' `
    -Checksum 'cc9afcbabd9dbd29b907c18989b38ffc1abcbb83e6c6105c3d544e35cc842bfe' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
