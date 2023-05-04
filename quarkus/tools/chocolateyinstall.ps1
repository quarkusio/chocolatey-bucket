# Generated with JReleaser 1.3.0 at 2023-05-04T09:44:19.675054+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.0.2.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.0.2.Final/quarkus-cli-3.0.2.Final.zip' `
    -Checksum '62eb9695c62613a4650d38952cb635cb67712a126eb4edbde70aafc6f89e8436' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
