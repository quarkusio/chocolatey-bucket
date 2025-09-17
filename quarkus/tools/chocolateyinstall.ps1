# Generated with JReleaser 1.3.0 at 2025-09-17T15:22:14.72542477Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.26.4'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.26.4/quarkus-cli-3.26.4.zip' `
    -Checksum '01bfccda8450b2da1a308c876235f15c4a0e571008bc6345eb77e6abcbc05d56' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
