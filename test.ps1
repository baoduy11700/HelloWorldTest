Write-Host "Hello World !"
$linuxpath = '/var/lib/jenkins/workspace/'
$number = Get-Command | Measure-Object | Select-Object -Property Count
New-item -Path $linuxpath -Name NumberofCommand -Value $number
cd $linuxpath