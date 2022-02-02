# Generated with JReleaser 0.10.0 at 2022-02-02T14:56:03.738695+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.7.0.Final'
$app_bat = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.7.0.Final/quarkus-cli-2.7.0.Final.zip' `
    -Checksum '71522c9711de4255bf4c5b3ceb1e6d538c488783781b986490d30996fffe5692' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_bat
