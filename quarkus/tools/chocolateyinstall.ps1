# Generated with JReleaser 1.3.0 at 2025-02-19T16:09:05.915862113Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.18.4'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.18.4/quarkus-cli-3.18.4.zip' `
    -Checksum '4bff2d0feead6bda94de4b5da121ab17b61b7b8c72a4fb28af63fd38554635e4' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
