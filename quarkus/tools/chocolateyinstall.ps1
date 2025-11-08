# Generated with JReleaser 1.3.0 at 2025-11-08T16:59:34.676478037Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.29.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.29.2/quarkus-cli-3.29.2.zip' `
    -Checksum '95fb388314dc0cfa88f97b1f7d92e67d2657966a1aa897979baf4c415c3216f8' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
