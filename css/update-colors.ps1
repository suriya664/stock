$content = Get-Content "style.css" -Raw
$content = $content -replace '#7DC576', '#4A90E2'
$content = $content -replace '#3E6F39', '#2C5AA0'
$content = $content -replace '#603e82', '#6B4C9A'
Set-Content -Path "style.css" -Value $content -NoNewline
Write-Host "Color scheme updated successfully"
