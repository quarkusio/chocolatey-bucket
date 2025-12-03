# Generated with JReleaser 1.3.0 at 2025-12-03T15:38:15.462492874Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.30.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.30.2/quarkus-cli-3.30.2.zip' `
    -Checksum '0f4f43b9c69af197481e9711cb4224b9ecdf51b3e8c82840c7669cfe320b9a45' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
