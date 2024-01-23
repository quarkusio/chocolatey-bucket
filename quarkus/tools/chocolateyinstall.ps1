# Generated with JReleaser 1.3.0 at 2024-01-23T15:34:47.987767Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.6.7'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.6.7/quarkus-cli-3.6.7.zip' `
    -Checksum 'fb703dc0e263f4246d939266c48a849ce9c7f44e5d7dbafd2a70662a386f9e46' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
