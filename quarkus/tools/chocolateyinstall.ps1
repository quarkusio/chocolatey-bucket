# Generated with JReleaser 1.3.0 at 2024-04-10T15:53:36.826675747Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.9.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.9.3/quarkus-cli-3.9.3.zip' `
    -Checksum '7876cc523631ce3d65658c3054d5f922fc87031f18eac71c921f0d2a333a193b' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
