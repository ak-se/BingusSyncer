#init
Write-Host "Initiating BingusSyncer"
#sleep for goodluck
Start-Sleep -Milliseconds 250
# Checking if Z is mounted
if (Get-PSDrive -Name Z -ErrorAction SilentlyContinue) 
    #if Z mounted, start copying
    { Write-Host "Z found, nooot noot, inishiyating synk" & "Robocopy.exe" Z:\ C:\bingus\ /MIR /FFT /Z /XA:H /W:5 } 

        # if z not mounted, throw error
        
        
else { Write-Host "Z not found :'( womp womp" -ForegroundColor Red }

# End Credits
Write-Host "BingusSyncer will exit now"
