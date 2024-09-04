Write-Host "Initiating BingusSyncer"
Start-Sleep -Milliseconds 250
# Checking if Z is mounted
if (Get-PSDrive -Name Z -ErrorAction SilentlyContinue) {
    Write-Host "Z found, nooot noot, inishiyating synk"

    & "Robocopy.exe" Z:\ C:\bingus\ /MIR /FFT /Z /XA:H /W:5

} else {

    Write-Host "Z not found :'( womp womp" -ForegroundColor Red

}

Write-Host "BingusSyncer will exit now"