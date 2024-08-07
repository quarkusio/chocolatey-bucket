# Generated with JReleaser 1.3.0 at 2024-08-07T17:48:36.289291578Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.13.1'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.13.1/quarkus-cli-3.13.1.zip' `
    -Checksum '709cf3af64fc359b5418c37c849291c3b22bbeb513aa167412c78bcc79ff3596' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
