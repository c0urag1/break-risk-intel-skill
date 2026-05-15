$ErrorActionPreference = "Stop"

$sourceDir = Split-Path -Parent (Split-Path -Parent $MyInvocation.MyCommand.Path)
if ($env:CODEX_HOME) {
  $target = Join-Path $env:CODEX_HOME "skills\break-risk-intel"
} else {
  $target = Join-Path $env:USERPROFILE ".codex\skills\break-risk-intel"
}

New-Item -ItemType Directory -Force -Path (Split-Path -Parent $target) | Out-Null
if (Test-Path $target) {
  Remove-Item -Recurse -Force $target
}
New-Item -ItemType Directory -Force -Path $target | Out-Null

$excludeDirs = @(".git", "__pycache__")
$excludeFiles = @("*.pyc", "*.zip")
Get-ChildItem -Path $sourceDir -Force | Where-Object {
  $item = $_
  $excludeDirs -notcontains $item.Name -and -not ($excludeFiles | Where-Object { $item.Name -like $_ })
} | ForEach-Object {
  Copy-Item -Path $_.FullName -Destination $target -Recurse -Force
}

Write-Host "Installed BREAK Risk Intel Skill to $target"
Write-Host "Restart or reload Codex CLI to discover it."
