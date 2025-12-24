# Generated with JReleaser 1.3.0 at 2025-12-24T13:44:30.222918947Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.30.5'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.30.5/quarkus-cli-3.30.5.zip' `
    -Checksum '6175de14f7fd937e07dbd12b74dd1bc179f35211f4bb8f30cac8b9e954c912f7' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
