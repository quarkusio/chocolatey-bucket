# Generated with JReleaser 1.3.0 at 2023-12-08T15:49:54.524608+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.6.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.6.1/quarkus-cli-3.6.1.zip' `
    -Checksum 'd9294f8e1ba83cf396706d48438b1783b9229ef90287e3e8ce91ce3137514fce' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
