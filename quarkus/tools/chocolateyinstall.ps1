# Generated with JReleaser 1.3.0 at 2024-04-30T08:50:20.776260046Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.10.0'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.10.0/quarkus-cli-3.10.0.zip' `
    -Checksum '37ef33a893f1f6a76cfaea8ddfe36c6972502c459a8b52b7ecc5df8532dc72b0' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
