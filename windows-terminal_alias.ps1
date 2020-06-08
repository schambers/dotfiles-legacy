# Reference: https://stackoverflow.com/questions/2858484/creating-aliases-in-powershell-for-git-commands/23201953#23201953

# Install
# Easiest way is to open your PS system profile and copy/paste
# Haven't figured out an easy way to link to repo
# > notepad $PROFILE
# Copy/paste contents, then open WT in administrator
# > Set-ExecutionPolicy RemoteSigned

# git status $args
# usage: s
function Get-GitStatus { & git status $args }
New-Alias -Name s -Value Get-GitStatus

# git commit $args
# usage: c "commit message"
function Set-GitCommit { & git commit -m $args}
New-Alias -Name c -Value Set-GitCommit

# git checkout $args
# usage: co master
function Get-GitCheckout { & git checkout $args }
New-Alias -Name co -Value Get-GitCheckout
