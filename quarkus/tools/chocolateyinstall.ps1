# Generated with JReleaser 1.3.0 at 2025-04-16T15:03:23.861827213Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.21.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.21.3/quarkus-cli-3.21.3.zip' `
    -Checksum '86f06cd38e1af4dcc68d75c25b56bc9954936108fee0e3ca882a715962c9835d' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
