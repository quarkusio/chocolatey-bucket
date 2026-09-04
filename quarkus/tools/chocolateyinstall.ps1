# Generated with JReleaser 1.3.0 at 2026-09-04T05:23:23.009963432Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.27.5.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.27.5.2/quarkus-cli-3.27.5.2.zip' `
    -Checksum 'aae5a98d8ff8ef84d384a84861d721180fbcb6d1ea57f119a5e534f029471a62' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
