# Generated with JReleaser 1.3.0 at 2024-11-06T15:51:21.595886019Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.16.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.16.2/quarkus-cli-3.16.2.zip' `
    -Checksum '56f31d2bf2a8a71cb6f20f2bee6f03f54071a96cd95d16181ddbc4095037310b' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
