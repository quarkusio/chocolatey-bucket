# Generated with JReleaser 1.3.0 at 2023-06-15T20:42:27.696304+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.1.2.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.1.2.Final/quarkus-cli-3.1.2.Final.zip' `
    -Checksum '525b5bfa8c00b155f2322fd41bd3e27734ae390208651cf8ea0c11fb306450ec' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
