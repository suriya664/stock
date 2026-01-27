# Download Stock Photos Script
# This script downloads high-quality free images from Unsplash

$baseDir = "c:\slot 3 (30)\nature (1)\nature"

# Create directories if they don't exist
$portfolioDir = Join-Path $baseDir "img\portfolio"
if (-not (Test-Path $portfolioDir)) {
    New-Item -ItemType Directory -Path $portfolioDir -Force | Out-Null
}

Write-Host "Starting download of 16 stock photos..." -ForegroundColor Cyan
Write-Host ""

$count = 0

# Header & Banner
$count++
Write-Host "[$count/16] Downloading: header-bg.jpg" -ForegroundColor Yellow
Invoke-WebRequest -Uri "https://images.unsplash.com/photo-1452587925148-ce544e77e70d?w=1920&h=1080&fit=crop" -OutFile "$baseDir\img\header-bg.jpg" -UseBasicParsing
Write-Host "  Success!" -ForegroundColor Green

$count++
Write-Host "[$count/16] Downloading: banner.jpg" -ForegroundColor Yellow
Invoke-WebRequest -Uri "https://images.unsplash.com/photo-1542038784456-1ea8e935640e?w=1920&h=600&fit=crop" -OutFile "$baseDir\img\banner.jpg" -UseBasicParsing
Write-Host "  Success!" -ForegroundColor Green

# About Section
$count++
Write-Host "[$count/16] Downloading: about.jpg" -ForegroundColor Yellow
Invoke-WebRequest -Uri "https://images.unsplash.com/photo-1522071820081-009f0129c71c?w=800&h=600&fit=crop" -OutFile "$baseDir\img\about.jpg" -UseBasicParsing
Write-Host "  Success!" -ForegroundColor Green

# Portfolio Images
$count++
Write-Host "[$count/16] Downloading: portfolio-1.jpg" -ForegroundColor Yellow
Invoke-WebRequest -Uri "https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=800&h=600&fit=crop" -OutFile "$baseDir\img\portfolio\portfolio-1.jpg" -UseBasicParsing
Write-Host "  Success!" -ForegroundColor Green

$count++
Write-Host "[$count/16] Downloading: portfolio-2.jpg" -ForegroundColor Yellow
Invoke-WebRequest -Uri "https://images.unsplash.com/photo-1484480974693-6ca0a78fb36b?w=800&h=600&fit=crop" -OutFile "$baseDir\img\portfolio\portfolio-2.jpg" -UseBasicParsing
Write-Host "  Success!" -ForegroundColor Green

$count++
Write-Host "[$count/16] Downloading: portfolio-3.jpg" -ForegroundColor Yellow
Invoke-WebRequest -Uri "https://images.unsplash.com/photo-1449824913935-59a10b8d2000?w=800&h=600&fit=crop" -OutFile "$baseDir\img\portfolio\portfolio-3.jpg" -UseBasicParsing
Write-Host "  Success!" -ForegroundColor Green

$count++
Write-Host "[$count/16] Downloading: portfolio-4.jpg" -ForegroundColor Yellow
Invoke-WebRequest -Uri "https://images.unsplash.com/photo-1504674900247-0877df9cc836?w=800&h=600&fit=crop" -OutFile "$baseDir\img\portfolio\portfolio-4.jpg" -UseBasicParsing
Write-Host "  Success!" -ForegroundColor Green

$count++
Write-Host "[$count/16] Downloading: portfolio-5.jpg" -ForegroundColor Yellow
Invoke-WebRequest -Uri "https://images.unsplash.com/photo-1488646953014-85cb44e25828?w=800&h=600&fit=crop" -OutFile "$baseDir\img\portfolio\portfolio-5.jpg" -UseBasicParsing
Write-Host "  Success!" -ForegroundColor Green

$count++
Write-Host "[$count/16] Downloading: portfolio-6.jpg" -ForegroundColor Yellow
Invoke-WebRequest -Uri "https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=800&h=600&fit=crop" -OutFile "$baseDir\img\portfolio\portfolio-6.jpg" -UseBasicParsing
Write-Host "  Success!" -ForegroundColor Green

$count++
Write-Host "[$count/16] Downloading: portfolio-7.jpg" -ForegroundColor Yellow
Invoke-WebRequest -Uri "https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?w=800&h=600&fit=crop" -OutFile "$baseDir\img\portfolio\portfolio-7.jpg" -UseBasicParsing
Write-Host "  Success!" -ForegroundColor Green

$count++
Write-Host "[$count/16] Downloading: portfolio-8.jpg" -ForegroundColor Yellow
Invoke-WebRequest -Uri "https://images.unsplash.com/photo-1497366216548-37526070297c?w=800&h=600&fit=crop" -OutFile "$baseDir\img\portfolio\portfolio-8.jpg" -UseBasicParsing
Write-Host "  Success!" -ForegroundColor Green

$count++
Write-Host "[$count/16] Downloading: portfolio-9.jpg" -ForegroundColor Yellow
Invoke-WebRequest -Uri "https://images.unsplash.com/photo-1541701494587-cb58502866ab?w=800&h=600&fit=crop" -OutFile "$baseDir\img\portfolio\portfolio-9.jpg" -UseBasicParsing
Write-Host "  Success!" -ForegroundColor Green

# Blog Images
$count++
Write-Host "[$count/16] Downloading: blog-1.jpg" -ForegroundColor Yellow
Invoke-WebRequest -Uri "https://images.unsplash.com/photo-1606986628253-e1f1e3c0c51f?w=800&h=600&fit=crop" -OutFile "$baseDir\img\blog-1.jpg" -UseBasicParsing
Write-Host "  Success!" -ForegroundColor Green

$count++
Write-Host "[$count/16] Downloading: blog-2.jpg" -ForegroundColor Yellow
Invoke-WebRequest -Uri "https://images.unsplash.com/photo-1542744173-8e7e53415bb0?w=800&h=600&fit=crop" -OutFile "$baseDir\img\blog-2.jpg" -UseBasicParsing
Write-Host "  Success!" -ForegroundColor Green

$count++
Write-Host "[$count/16] Downloading: blog-3.jpg" -ForegroundColor Yellow
Invoke-WebRequest -Uri "https://images.unsplash.com/photo-1502920917128-1aa500764cbd?w=800&h=600&fit=crop" -OutFile "$baseDir\img\blog-3.jpg" -UseBasicParsing
Write-Host "  Success!" -ForegroundColor Green

$count++
Write-Host "[$count/16] Downloading: blog-4.jpg" -ForegroundColor Yellow
Invoke-WebRequest -Uri "https://images.unsplash.com/photo-1556742049-0cfed4f6a45d?w=800&h=600&fit=crop" -OutFile "$baseDir\img\blog-4.jpg" -UseBasicParsing
Write-Host "  Success!" -ForegroundColor Green

Write-Host ""
Write-Host "Download complete! All 16 images saved successfully." -ForegroundColor Green
Write-Host ""
Write-Host "Image locations:" -ForegroundColor Cyan
Write-Host "  - Header & Banner: img\" -ForegroundColor White
Write-Host "  - About: img\" -ForegroundColor White
Write-Host "  - Portfolio: img\portfolio\" -ForegroundColor White
Write-Host "  - Blog: img\" -ForegroundColor White
