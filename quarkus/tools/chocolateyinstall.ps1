# Generated with JReleaser 1.3.0 at 2026-07-08T14:31:23.454884757Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.37.2'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.37.2/quarkus-cli-3.37.2.zip' `
    -Checksum 'f5a13827aa89020a3b3794494b6d47f36b231741bcfeafec416c72f3e1bc4a27' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
