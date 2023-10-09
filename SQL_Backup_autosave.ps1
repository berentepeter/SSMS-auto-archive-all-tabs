## SSMS ##
$path = 'C:\Users\$env:username\Documents\Visual Studio 2017\Backup Files\Solution1'
$name = Get-Date -UFormat "%Y/%m/%d"
if(!(Test-Path -Path C:\Folder)){New-Item -ItemType Directory -Force -Path C:\Folder}
New-Item -ItemType Directory -Force -Path C:\Folder\$name
Copy-Item -Path $path -Destination C:\Folder\$name -Recurse

exit 10
