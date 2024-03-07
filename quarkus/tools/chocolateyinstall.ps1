# Generated with JReleaser 1.3.0 at 2024-03-07T15:44:35.818360004Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.8.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.8.2/quarkus-cli-3.8.2.zip' `
    -Checksum 'b00493e34862d4524b73b24b03076e0a7004a95cfc57482906e90a0c951a9261' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
