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
$PATH = @(
        "$HOME\AppData\Roaming\Python\Scripts"
        "$HOME\AKKAProgram\Development.Tool\flutter\bin"
        )

foreach ($i in $PATH) {
    $env:Path = $env:Path + ";" + $i
}

# Mirror Source
## GoProxy
$env:GO111MODULE = 'on'
$env:GOPROXY = 'https://goproxy.cn'
## Flutter
$env:PUB_HOSTED_URL = 'https://mirrors.tuna.tsinghua.edu.cn/dart-pub'
$env:FLUTTER_STORAGE_BASE_URL = 'https://mirrors.tuna.tsinghua.edu.cn/flutter'
