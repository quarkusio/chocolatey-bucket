# Generated with JReleaser 1.3.0 at 2024-06-05T14:59:04.776874335Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.11.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.11.1/quarkus-cli-3.11.1.zip' `
    -Checksum '8be1fd5d3d99507038e5251d36189e1da94722cf7f39d2494d83f6814c7a1fbb' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
