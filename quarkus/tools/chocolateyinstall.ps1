# Generated with JReleaser 1.3.0 at 2022-12-14T18:11:38.917208+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.15.0.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.15.0.Final/quarkus-cli-2.15.0.Final.zip' `
    -Checksum '34fdd595a1d5abce727f491e4bfd64814b1c403a57a98a0f1ad3b536d87bf6c1' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
