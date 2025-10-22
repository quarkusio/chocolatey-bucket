# Generated with JReleaser 1.3.0 at 2025-10-22T14:55:02.64551807Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.28.5'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.28.5/quarkus-cli-3.28.5.zip' `
    -Checksum 'a1087c7987d63e261914a729859e8763e8f60c13954036dc1156ced064ba98b1' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
