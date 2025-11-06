# Generated with JReleaser 1.3.0 at 2025-11-06T14:05:53.104517703Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.29.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.29.1/quarkus-cli-3.29.1.zip' `
    -Checksum 'ccd28dcd1a8ce05a16db4b4874b18d026b40bd631b62af6517568503fca702b5' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
