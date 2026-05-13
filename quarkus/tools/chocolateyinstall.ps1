# Generated with JReleaser 1.3.0 at 2026-05-13T16:32:39.800579485Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.35.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.35.3/quarkus-cli-3.35.3.zip' `
    -Checksum 'c79d50293db55147b180e2359bd81e0ad986ecf55b7ad3e6725f4c9e9605c739' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
