Write-Host "Hello World !"
$linuxpath = '/var/lib/jenkins/workspace/'
$number = Get-Command | Measure-Object | Select-Object -Property Count | Out-String
[string]$textfile = "Chi tiết phiên bản của powershell là : $($PSVersionTable | Out-String) Tổng số câu lệnh là : $($number)"
if(Test-Path $linuxpath/NumberofCommand.txt){
    Remove-Item -Path $linuxpath/NumberofCommand.txt
    New-item -Path $linuxpath -Name NumberofCommand.txt -Value $textfile
}else{
New-item -Path $linuxpath -Name NumberofCommand.txt -Value $textfile}
Get-Content -Path $linuxpath/NumberofCommand.txt
