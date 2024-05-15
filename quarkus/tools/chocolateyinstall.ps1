# Generated with JReleaser 1.3.0 at 2024-05-15T15:30:47.08774292Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.10.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.10.1/quarkus-cli-3.10.1.zip' `
    -Checksum '52fd1c8aa9de648001f4b9f2c3c00062900ecd49c068c9ddd090b24ffda91b27' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
