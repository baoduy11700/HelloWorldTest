Write-Host "Hello World !"
$linuxpath = '/var/lib/jenkins/workspace/'
$number = Get-Command | Measure-Object | Select-Object -Property Count
if(Test-Path $linuxpath/NumberofCommand.txt){
    Remove-Item -Path $linuxpath/NumberofCommand.txt
    New-item -Path $linuxpath -Name NumberofCommand.txt -Value $number
}else{
New-item -Path $linuxpath -Name NumberofCommand.txt -Value $number}
Get-Content -Path $linuxpath/NumberofCommand.txt
