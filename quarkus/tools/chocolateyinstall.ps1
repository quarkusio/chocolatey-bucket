# Generated with JReleaser 1.3.0 at 2024-02-14T16:11:29.403980769Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.7.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.7.3/quarkus-cli-3.7.3.zip' `
    -Checksum '7f2fd0b74c966ddb1cd7e70846b0dabf9ee9a00118a5f2df79e4dcce392464c8' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
