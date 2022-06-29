# Generated with JReleaser 1.0.0 at 2022-06-29T16:43:09.655354+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.10.1.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.10.1.Final/quarkus-cli-2.10.1.Final.zip' `
    -Checksum '711ab985601210ad30fb81e864aae6e69f9c9db539e572ab93a1ccbe9d2aef6e' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
