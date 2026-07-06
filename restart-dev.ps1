# Stop any running Next.js dev servers
Write-Host "Stopping any running dev servers..." -ForegroundColor Yellow
Get-Process -Name "node" -ErrorAction SilentlyContinue | Where-Object { $_.MainWindowTitle -like "*Next.js*" -or $_.CommandLine -like "*next dev*" } | Stop-Process -Force

# Wait a moment
Start-Sleep -Seconds 2

# Generate Prisma Client
Write-Host "`nGenerating Prisma Client..." -ForegroundColor Cyan
npx prisma generate

# Start dev server
Write-Host "`nStarting development server..." -ForegroundColor Green
npm run dev
