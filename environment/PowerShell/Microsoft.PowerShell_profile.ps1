# AKKA ♡ SHELL

# メスガキ Prompt
Write-Host "雑魚 ~ 雑魚 ♡ A K K A ♡"
Write-Host "什麽 ♡ Cmdlet ♡ 都不清楚的 雑魚 ♡ ♡ ♡"

# Setup Conda Environment
function Set-Conda {
    #region conda initialize
    # !! Contents within this block are managed by 'conda init' !!
    If (Test-Path "$HOME\AKKAProgram\Development.Tool\anaconda3\Scripts\conda.exe") {
        (& "$HOME\AKKAProgram\Development.Tool\anaconda3\Scripts\conda.exe" "shell.powershell" "hook") | Out-String | Where-Object {$_} | Invoke-Expression
    }
    #endregion
}

# Setup Env Variables
$PATH = @("$HOME\AppData\Roaming\Python\Scripts")

foreach ($i in $PATH) {
    $env:Path = $env:Path + ";" + $i
}

