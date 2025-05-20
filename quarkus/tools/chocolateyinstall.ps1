# Generated with JReleaser 1.3.0 at 2025-05-20T09:15:54.286029178Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.20.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.20.1/quarkus-cli-3.20.1.zip' `
    -Checksum '19dc213cabf241bf82adc92c7d21af2082ec43816e985defb8b6704ea1b19b8d' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
