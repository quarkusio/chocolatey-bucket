# Generated with JReleaser 1.3.0 at 2025-09-10T05:14:12.509880177Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.26.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.26.3/quarkus-cli-3.26.3.zip' `
    -Checksum '0f72dd80bc72e472c0191001338077fbe6a52dd0f790b5797f17efa139a7b57f' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
