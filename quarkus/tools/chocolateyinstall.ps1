# Generated with JReleaser 1.3.0 at 2026-03-18T17:58:00.867123404Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.32.4'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.32.4/quarkus-cli-3.32.4.zip' `
    -Checksum 'ec30b590e234ebdafac267dbc079e5d65d1cc010fb362830e24332e96137f074' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
