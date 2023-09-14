# Generated with JReleaser 1.3.0 at 2023-09-14T22:53:02.382406+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.16.11.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.16.11.Final/quarkus-cli-2.16.11.Final.zip' `
    -Checksum '1a5cf309b0910c711c8bcc7976b887f09772e714a2a5302785608fa28a59458f' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
