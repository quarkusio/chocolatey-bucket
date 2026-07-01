# Generated with JReleaser 1.3.0 at 2026-07-01T17:12:21.134885466Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.37.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.37.1/quarkus-cli-3.37.1.zip' `
    -Checksum 'ce1aa819093d4409f904cb996815cfe1066d3e85064dfefcb3e2957a7e414250' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
