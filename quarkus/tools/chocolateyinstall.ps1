# Generated with JReleaser 1.3.0 at 2026-09-03T14:54:34.991141261Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.33.3.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.33.3.2/quarkus-cli-3.33.3.2.zip' `
    -Checksum '9359819598a364b29b869f39391bf523a597ecdd35a26ee9b24aa07581ceb77d' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
