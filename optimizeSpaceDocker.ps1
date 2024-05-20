param([String]$path='')
Import-Module -Name Hyper-V
wsl --shutdown
Optimize-VHD -Path $path\Docker\wsl\data\ext4.vhdx -Mode Full
wsl --exec docker-desktop-data