# Init
Write-Host "Initiating BingusSyncer..."
# Sleep for good luck
Start-Sleep -Milliseconds 250

# Check if Z drive is mounted
if (Get-PSDrive -Name Z -ErrorAction SilentlyContinue) {
    # If Z drive is mounted, start copying
    Write-Host "Z drive found. Nooot noot! Initiating sync..." -ForegroundColor Green
    Robocopy.exe Z:\ C:\bingus\ /MIR /FFT /Z /XA:H /W:5
	Write-Host "ggs chat, that was quick wasn't it, it was suck-sess-fool" -ForegroundColor Green
} else {
    # If Z drive is not mounted, display error
    Write-Host "Z drive not found :'( womp womp" -ForegroundColor Red
}

# F-init
Write-Host "BingusSyncer will exit now." -ForegroundColor Blue
