# Generated with JReleaser 1.3.0 at 2025-07-09T14:45:38.036150911Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.24.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.24.3/quarkus-cli-3.24.3.zip' `
    -Checksum '749156cf961d01bf75cb1674c3e48724f4d762af82e4350ac6b3b78e9cc9ac6d' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
