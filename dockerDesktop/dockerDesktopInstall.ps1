# Docker Desktop 自定义安装脚本
$installer = ".\Docker Desktop Installer.exe"
$installDir = "E:\ENV\Docker\WSL"
$dataRoot = "E:\ENV\Docker\data"

Start-Process -FilePath $installer -Wait -ArgumentList @(
    'install',
    '--accept-license',
    "--installation-dir=`"$installDir`"",
    '--backend=wsl-2',
    '--always-run-service',
    "--windows-containers-default-data-root=`"$dataRoot`"",
    "--wsl-default-data-root=`"$dataRoot`""
)
