# Generated with JReleaser 1.3.0 at 2026-05-01T07:20:15.638554865Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.35.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.35.1/quarkus-cli-3.35.1.zip' `
    -Checksum 'c46362af49015461d8a7f579fe8927dcd3feadbacd786191e06c6a01c1e0fdd4' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
