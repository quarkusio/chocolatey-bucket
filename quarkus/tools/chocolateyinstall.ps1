# Generated with JReleaser 1.3.0 at 2025-10-16T15:00:33.76878642Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.28.4'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.28.4/quarkus-cli-3.28.4.zip' `
    -Checksum '238b938cd865aa3c2e74a0da3b6dcceb22edc9bd116a4a57f7189957b2285a51' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
