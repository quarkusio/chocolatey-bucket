# Generated with JReleaser 1.3.0 at 2024-12-04T17:53:04.36196232Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.17.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.17.3/quarkus-cli-3.17.3.zip' `
    -Checksum '1df7fa3f8e90a724f3a3c18ceee91b137c745aef474f883071f4df208f84e4b3' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
