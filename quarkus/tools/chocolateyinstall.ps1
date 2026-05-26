# Generated with JReleaser 1.3.0 at 2026-05-26T14:55:08.187460285Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.27.4'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.27.4/quarkus-cli-3.27.4.zip' `
    -Checksum 'e225fe896efbf14d525667a4c7956dd0a6a0785757b1fd5c380a59e5e974a3f9' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
