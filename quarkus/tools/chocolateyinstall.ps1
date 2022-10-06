# Generated with JReleaser 1.1.0 at 2022-10-06T10:32:27.778435+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.13.1.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.13.1.Final/quarkus-cli-2.13.1.Final.zip' `
    -Checksum '6f35c4afb843661bf2e6fb9729cf86924dc558160360a90363e8b19670a0a041' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
