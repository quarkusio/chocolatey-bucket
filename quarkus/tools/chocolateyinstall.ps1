# Generated with JReleaser 1.3.0 at 2026-02-11T16:49:25.414741927Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.31.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.31.3/quarkus-cli-3.31.3.zip' `
    -Checksum 'efd2470eaa103e2753512164ca58cbfe1a5bab667b096292604758bced04afa7' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
