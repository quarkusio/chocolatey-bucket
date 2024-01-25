# Generated with JReleaser 1.3.0 at 2024-01-25T23:39:46.63519Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.2.10.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.2.10.Final/quarkus-cli-3.2.10.Final.zip' `
    -Checksum '527163d521bf52e52e92b6ba3a8e40b418eb6ff1731d94cc47df5dd22b9714a1' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
