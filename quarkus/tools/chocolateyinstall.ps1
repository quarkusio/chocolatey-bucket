# Generated with JReleaser 1.3.0 at 2024-06-05T14:04:58.239809362Z
$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools
$app_home = Join-Path $package 'quarkus-cli-3.8.5'
$app_exe = Join-Path $app_home 'bin/quarkus.bat'

Install-ChocolateyZipPackage `
    -PackageName 'quarkus' `
    -Url 'https://github.com/quarkusio/quarkus/releases/download/3.8.5/quarkus-cli-3.8.5.zip' `
    -Checksum '278a30e617dcddd3faee592fc54f74ff49f3240d933d9a82f304389f7e4183d7' `
    -ChecksumType 'sha256' `
    -UnzipLocation $package

Install-BinFile -Name 'quarkus' -Path $app_exe
