## SSMS ##
$path = "C:\Users\$env:username\Documents\Visual Studio 2017\Backup Files\Solution1"
$name = Get-Date -UFormat "%Y/%m/%d"
if(!(Test-Path -Path C:\Folder)){New-Item -ItemType Directory -Force -Path C:\Folder}
New-Item -ItemType Directory -Force -Path C:\Folder\$name
Copy-Item -Path $path -Destination C:\Folder\$name -Recurse

## ADS ##
$path2 = "C:\Users\$env:username\AppData\Roaming\azuredatastudio\Backups"
$name2 = Get-Date -UFormat "%Y/%m/%d"
##if(!(Test-Path -Path C:\Folder\ADS)){New-Item -ItemType Directory -Force -Path C:\Folder\ADS}
New-Item -ItemType Directory -Force -Path C:\Folder\$name2
Copy-Item -Path $path2 -Destination C:\Folder\$name2 -Recurse


exit 10
