$url = "https://github.com/andrew-kemp/public/raw/refs/heads/main/IntuneWindowsAgent.msi"
$output = "C:\Windows\Temp\IntuneManagementExtension.msi"
Invoke-WebRequest -Uri $url -OutFile $output
Start-Process -FilePath $output -ArgumentList "/quiet" -Wait
Remove-Item -Path $output
