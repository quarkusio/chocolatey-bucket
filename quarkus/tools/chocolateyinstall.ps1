# Generated with JReleaser 1.3.0 at 2024-09-14T16:26:29.715810041Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.14.4'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.14.4/quarkus-cli-3.14.4.zip' `
    -Checksum '70eb4d70f4fd21e18ca3108406d538d9282450c99e6573b27efa1df6b3fe4b79' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
