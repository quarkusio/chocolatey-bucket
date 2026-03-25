# Generated with JReleaser 1.3.0 at 2026-03-25T16:02:53.215617395Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.33.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.33.1/quarkus-cli-3.33.1.zip' `
    -Checksum '360cd903cc06c7dc97b9d25bba4e1cf34164009927783b53a7ef4acc43dbbca2' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
