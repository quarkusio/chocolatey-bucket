# Generated with JReleaser 1.3.0 at 2026-09-30T11:21:17.02332593Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.40.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.40.1/quarkus-cli-3.40.1.zip' `
    -Checksum '5fa2eb9f9d6fc3392bbb569faf3a097f4df0007922a7f030e55f702aa3f8245b' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
