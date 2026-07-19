# ZipLoot DeepSeek WebGPU Local Launcher (Windows PowerShell)
Write-Host "==============================================" -ForegroundColor Green
Write-Host "   ZipLoot DeepSeek WebGPU Local Launcher" -ForegroundColor Green
Write-Host "==============================================" -ForegroundColor Green

$port = 8000
$url = "http://localhost:$port"

# Check if Python is installed to spin up web server
$hasPython = Get-Command python -ErrorAction SilentlyContinue
if ($hasPython) {
    Write-Host "[ZipLoot] Launching Python local web server on port $port..." -ForegroundColor Cyan
    Start-Process -FilePath "python" -ArgumentList "-m http.server $port" -NoNewWindow
    Start-Sleep -Seconds 2
    Start-Process $url
    Read-Host "Server running at $url. Press ENTER to close..."
    Stop-Process -Name "python" -Force
} else {
    # Fallback to npx if node is installed
    $hasNode = Get-Command node -ErrorAction SilentlyContinue
    if ($hasNode) {
        Write-Host "[ZipLoot] Launching npx serve on port $port..." -ForegroundColor Cyan
        Start-Process -FilePath "npx" -ArgumentList "serve -l $port" -NoNewWindow
        Start-Sleep -Seconds 3
        Start-Process $url
        Read-Host "Server running at $url. Press ENTER to close..."
        Stop-Process -Name "node" -Force
    } else {
        Write-Error "Please install Python or Node.js to spin up local web hosting server."
    }
}
