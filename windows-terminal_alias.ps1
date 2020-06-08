# Reference: https://stackoverflow.com/questions/2858484/creating-aliases-in-powershell-for-git-commands/23201953#23201953

# Install
# Easiest way is to open your PS system profile and copy/paste
# Haven't figured out an easy way to link to repo
# > notepad $PROFILE
# Copy/paste contents, then open WT in administrator
# > Set-ExecutionPolicy RemoteSigned

# git status $args
# usage: s
function Get-GS { & git status $args }
New-Alias -Name s -Value Get-GS

# git commit $args
# usage: c "commit message"
function Set-GitCommit { & git commit -m $args}
New-Alias -Name c -Value Set-GitCommit

# git checkout $args
# usage: co master
function Get-GitCheckout { & git checkout $args }
New-Alias -Name co -Value Get-GitCheckout

# git add $args
# usage: ga -u some/path
function Get-GitAdd { & git add $args }
New-Alias -Name ga -Value Get-GitAdd -Force -Option AllScope

# git push
# usage: gp
function Get-GitPush { & git push $args }
New-Alias -Name gp -Value Get-GitPush -Force -Option AllScope

# git pull
# usage: gpu
function Get-GitPull { & git pull $args }
New-Alias -Name gpu -Value Get-GitPull -Force -Option AllScope

# git fetch
function Get-GitFetch { & git fetch $args }
New-Alias -Name f -Value Get-GitFetch -Force -Option AllScope

# git branch args
# usage: gb new-branch
function Get-GB{ & git branch $args }
New-Alias -Name gb -Value Get-GB -Force -Option AllScope

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Agnoster
