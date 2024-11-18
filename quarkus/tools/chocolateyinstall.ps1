# Generated with JReleaser 1.3.0 at 2024-11-18T17:27:28.108069783Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.15.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.15.2/quarkus-cli-3.15.2.zip' `
    -Checksum '2e2e6b307d794a67d5332ca747bc76f74a42979b9490a005abab53c08cba1002' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
