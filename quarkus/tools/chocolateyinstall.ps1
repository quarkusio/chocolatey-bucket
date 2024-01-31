# Generated with JReleaser 1.3.0 at 2024-01-31T16:36:38.557557628Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.7.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.7.1/quarkus-cli-3.7.1.zip' `
    -Checksum 'f59af24a92aacc67c847b80d9a31fe6acb00d8c04fdf67bd5523598356e0ea0f' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
