# Powershell script to generate a Chocolatey packages.config file
# based on the current Chocolatey configuation
#
# usage: Export-Chocolatey.ps1 > packages.config
#
# You can (re-)install the packages on the same or different system using
#   choco install packages.config -y
#
# The commented-out line includes the package version number
# TODO: parameterize version/no-version
# TODO: optionally omit the .install packages when the base package is present

Write-Output "<?xml version=`"1.0`" encoding=`"utf-8`"?>"
Write-Output "<packages>"
#choco list -lo -r -y | % { "   <package id=`"$($_.SubString(0, $_.IndexOf("|")))`" version=`"$($_.SubString($_.IndexOf("|") + 1))`" />" }
choco list -lo -r -y | % { "   <package id=`"$($_.SubString(0, $_.IndexOf("|")))`" />" }
Write-Output "</packages>"
