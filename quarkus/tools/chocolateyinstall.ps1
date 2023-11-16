# Generated with JReleaser 1.3.0 at 2023-11-16T16:18:22.772215+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.5.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.5.2/quarkus-cli-3.5.2.zip' `
    -Checksum 'efbad4662be0b7077a86545ce8a2ef658453ec94b917913417527257c8db3633' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
