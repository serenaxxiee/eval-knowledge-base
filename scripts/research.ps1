# Daily research agent for the public eval knowledge base
# Runs at 6am Pacific via Windows Task Scheduler

$ErrorActionPreference = "Continue"

$RepoDir = "C:\Users\serenaxie\eval-knowledge-base"
$LogFile = "$RepoDir\scripts\research.log"
$PromptFile = "$RepoDir\scripts\research-prompt.md"
$Today = Get-Date -Format "yyyy-MM-dd"
$Time = Get-Date -Format "HH:mm:ss"

Add-Content -Path $LogFile -Value "[$Today $Time] Starting public research run..."

Set-Location $RepoDir

# Pull latest before researching
git pull --rebase origin main 2>&1 | Out-File -Append $LogFile

# Read the research prompt
$Prompt = Get-Content -Path $PromptFile -Raw

# Run Claude Code in non-interactive mode
claude -p --dangerously-skip-permissions --allowedTools "WebSearch WebFetch Read Write Edit Glob Grep Bash(git:*)" --model sonnet --max-budget-usd 1.00 $Prompt 2>&1 | Out-File -Append $LogFile

$Time = Get-Date -Format "HH:mm:ss"
Add-Content -Path $LogFile -Value "[$Today $Time] Public research run complete."
