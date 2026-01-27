$files = @("index.html", "about.html", "portfolio.html", "booking.html", "blog.html", "contact.html", "login.html")

foreach ($file in $files) {
    $content = Get-Content $file -Raw
    $content = $content -replace '(?s)\s*<!--/\*\*\*.*?\*\*\*/-->\s*<p>Designed By <a href="https://htmlcodex\.com">HTML Codex</a></p>\s*', "`r`n"
    Set-Content -Path $file -Value $content -NoNewline
}

Write-Host "HTML Codex credits removed from all files"
