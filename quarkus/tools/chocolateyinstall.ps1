# Generated with JReleaser 1.3.0 at 2023-09-06T10:56:21.49856+02:00
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.3.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.3.2/quarkus-cli-3.3.2.zip' `
    -Checksum '0804b27eb1f7f2368efed17a52062c4201407e152ab19ef2a5ccabb5c85a35a5' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
