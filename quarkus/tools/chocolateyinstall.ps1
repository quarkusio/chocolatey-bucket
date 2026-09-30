# Generated with JReleaser 1.3.0 at 2026-09-30T09:20:06.112366643Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.33.4'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.33.4/quarkus-cli-3.33.4.zip' `
    -Checksum '31e0ea2dea25c072faccfd3d9d72cd95cb7fc027e260442b00c18b87b53d38cf' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
