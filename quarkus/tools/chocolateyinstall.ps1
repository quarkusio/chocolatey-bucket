# Generated with JReleaser 1.3.0 at 2023-07-05T11:08:44.441649+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.16.8.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.16.8.Final/quarkus-cli-2.16.8.Final.zip' `
    -Checksum 'e0b49a8e5075e50f66d06fa8ba2bc7fefd318eef0418db8b695180841e59542f' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
