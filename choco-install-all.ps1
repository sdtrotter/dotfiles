# Powershell script to generate a ...
# based on the current Chocolatey configuation
#
# usage: choco-install-all.ps1 > install.ps1
#
# You can (re-)install the packages on the same or different system using
#   choco install packages.config -y
#
choco list -lo -r -y | % { "choco install -y $($_.SubString(0, $_.IndexOf("|")))" }
