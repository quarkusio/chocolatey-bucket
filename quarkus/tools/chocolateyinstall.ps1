# Generated with JReleaser 1.3.0 at 2024-01-26T19:36:08.77248Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.6.8'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.6.8/quarkus-cli-3.6.8.zip' `
    -Checksum 'f6a23a7ad444f7556b73fe690d54529f1b1f98df9ad02487ce3ffc596dbb76e8' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
