$enddate = (Get-Date).tostring("yyyyMMdd-HHmmssFFF")
$DesktopPath = [Environment]::GetFolderPath("Desktop")
$filename = $DesktopPath + '\' + $enddate + '_process.txt'
Get-Process | Sort-Object Id | Out-File $filename
