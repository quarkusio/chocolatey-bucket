# Generated with JReleaser 1.0.0 at 2022-05-11T11:15:49.042237+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.9.0.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.9.0.Final/quarkus-cli-2.9.0.Final.zip' `
    -Checksum 'c4328b42692bf0153e71f2130bc539fd26220157c29a287df72388de1c5dd693' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
