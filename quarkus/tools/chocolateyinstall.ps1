# Generated with JReleaser 1.3.0 at 2026-01-28T16:44:53.769267234Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.31.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.31.1/quarkus-cli-3.31.1.zip' `
    -Checksum 'e8838c5b5f2da5f3df84ff1b78541658c067213268ac430b0bad86ba5a3f70c5' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
