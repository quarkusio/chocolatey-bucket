# Generated with JReleaser 1.3.0 at 2026-03-25T11:32:06.779907857Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.27.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.27.3/quarkus-cli-3.27.3.zip' `
    -Checksum '261e675bfc5617721da816de8483ac44f19b99332bd84c0357adee3db7dce8e7' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
