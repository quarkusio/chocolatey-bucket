# Generated with JReleaser 1.0.0 at 2022-04-19T18:34:08.752104+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.8.1.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.8.1.Final/quarkus-cli-2.8.1.Final.zip' `
    -Checksum 'c9742df315722d29fce7b3dfcc7a1a4541ace1cc70045336bb7159c9146c378b' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
