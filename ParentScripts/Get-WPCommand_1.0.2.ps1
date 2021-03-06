#requires –version 2.0

Function Get-WPCommand {

#region Help

<#
.SYNOPSIS
	WindowsPatching Module Help Script.
.DESCRIPTION
	Script to list WindowsPatching Module commands.
.NOTES
	VERSION:    1.0.2
	AUTHOR:     Levon Becker
	EMAIL:      PowerShell.Guru@BonusBits.com 
	ENV:        Powershell v2.0, CLR 4.0+
	TOOLS:      PowerGUI Script Editor
.EXAMPLE
	Get-WTCommand
.EXAMPLE
	Get-WTCommand -Noun Jobs
.EXAMPLE
	Get-WTCommand -Verb Test
.PARAMETER Noun
	Gets cmdlets and functions with names that include the specified noun. 
	<String> represents one or more nouns or noun patterns, such as "process" or "*item*". 
	Wildcards are permitted.
.PARAMETER Verb
	Gets information about cmdlets and functions with names that include the specified verb.
	<String> represents one or more verbs or verb patterns, such as "remove" or *et".
	Wildcards are permitted.
#>

#endregion Help
 
    [CmdletBinding()]  
    Param (
		[parameter(Mandatory=$false)][string]$Noun = '*',
		[parameter(Mandatory=$false)][string]$Verb = '*'
	) 

    #List all WindowsPatching functions available
    Get-Command -Module WindowsPatching -Verb $Verb -Noun $Noun
}

#region Notes

<# Dependents
#>

<# Dependencies
#>

<# TO DO
#>

<# Change Log
1.0.0 - 08/08/2012
	Created.
1.0.1 - 08/24/2012
	Added Notes
	Updated Help
1.0.2 -  01/14/2013
	Added Verb and Noun parameters
#>


#endregion Notes
