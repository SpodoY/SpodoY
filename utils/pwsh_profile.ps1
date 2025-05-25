oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH/atomic.omp.json" | Invoke-Expression

Import-Module -Name Terminal-Icons
if ($host.Name -eq 'ConsoleHost')
{
    Import-Module PSReadLine
}

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

Set-Alias -Name tf -Value 'terraform'
Set-Alias -Name k8 -Value 'kubectl'

function gcom {
    git add .
    git commit -m "$args"
}

function lg {
    git add .
    git commit -m "$args"
    git push
}

function glg {
    git log --graph --all
}
