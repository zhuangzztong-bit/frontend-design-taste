# Install Frontend Design Taste plugin into Antigravity (Windows PowerShell 7)
$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$targetDir = Join-Path $env:USERPROFILE ".gemini\config\plugins\frontend-design-taste"

Write-Host "Installing Frontend Design Taste plugin to: $targetDir" -ForegroundColor Cyan

New-Item -ItemType Directory -Force -Path $targetDir | Out-Null

$items = @("plugin.json", "README.md", "LICENSE", "assets", "rules", "skills")
foreach ($item in $items) {
    $src = Join-Path $repoRoot $item
    if (Test-Path $src) {
        Copy-Item -Path $src -Destination $targetDir -Recurse -Force
    }
}

Write-Host "Installed successfully! Open Antigravity -> Customizations (自定义项) to manage it." -ForegroundColor Green
