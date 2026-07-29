# Generated with JReleaser 1.3.0 at 2026-07-29T07:41:40.302401477Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.33.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.33.3/quarkus-cli-3.33.3.zip' `
    -Checksum 'f66a8f6a4e6609ad775129ea4890831ba7f13ca742c3734b43198c068ba9f14e' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
