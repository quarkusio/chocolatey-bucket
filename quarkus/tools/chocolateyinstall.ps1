# Generated with JReleaser 1.3.0 at 2024-04-17T14:56:52.903448906Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.8.4'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.8.4/quarkus-cli-3.8.4.zip' `
    -Checksum '59847bbb8189f06f1cc8dcd819fc9bd6639a5171dd2eefee3364edf765a7e35a' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
