# Generated with JReleaser 1.3.0 at 2026-07-29T08:07:32.530192257Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.38.0'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.38.0/quarkus-cli-3.38.0.zip' `
    -Checksum 'ce75e2784d1938e221d86c8e2c61bcf31a081bc0992284cafe54eb43e12ac36e' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
