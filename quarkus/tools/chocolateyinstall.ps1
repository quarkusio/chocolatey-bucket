# Generated with JReleaser 1.3.0 at 2025-01-08T17:49:31.641799162Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.17.6'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.17.6/quarkus-cli-3.17.6.zip' `
    -Checksum '70729bbf656578b3d82646b3a1dbbef8592becb0d4b1f54fa31a903f2ed8ec5f' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
