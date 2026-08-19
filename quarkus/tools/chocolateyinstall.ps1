# Generated with JReleaser 1.3.0 at 2026-08-19T14:49:21.744140279Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.38.3'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.38.3/quarkus-cli-3.38.3.zip' `
    -Checksum 'f4cae021c7062d467e5ff8fabb7dc27dfc7c0c1b947cee149eb03ce2b505ec09' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
