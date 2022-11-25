# Generated with JReleaser 1.3.0 at 2022-11-25T18:12:15.966523+01:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-2.14.2.Final'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/2.14.2.Final/quarkus-cli-2.14.2.Final.zip' `
    -Checksum '13ad7165ba4eda9d8618466b8b65bdc41cd547da48bcc8b9781f4d3de0daf707' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
