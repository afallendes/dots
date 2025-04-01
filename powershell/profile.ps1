# Configuration

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser


# Functions

function Reload-Profile {
    Clear-Host && . $PROFILE
}

function Start-WorkDirectory {
    param(
        [Parameter(Mandatory)]
        [String]$DirectoryName
    )

    Set-Location -Path (New-Item -Path $DirectoryName -ItemType Directory).Name
}

function Find-Element {
    param(
        [Parameter(Mandatory)]
        [String]$Path
    )

    (Get-Command $Path).Source
}

function Get-LocationAsString {
    return (Get-Location).Path
}

function New-File {
	param(
		[Parameter(Mandatory)]
		[Object]$List
	)

	return New-Item -Force -Type File $List
}

function New-Directory {
	param(
		[Parameter(Mandatory)]
		[Object]$List
	)

	return New-Item -Force -Type Directory $List
}

function New-SymbolicLink {
    param(
        [Parameter(Mandatory)][String]$Path,
        [Parameter(Mandatory)][String]$Target
    )

    return New-Item -Force -ItemType SymbolicLink -Path $Path -Target $Target
}


# Aliases

Set-Alias -Name "mcd" -Value Start-WorkDirectory
Set-Alias -Name "which" -Value Find-Element
Set-Alias -Name "pwd" -Value Get-LocationAsString
Set-Alias -Name "nf" -Value New-File
Set-Alias -Name "nd" -Value New-Directory
Set-Alias -Name "lns" -Value New-SymbolicLink
Set-Alias -Name "r" -Value Reload-Profile
Set-Alias -Name "c" -Value Clear-Host


# Environment variables

$PSDefaultParameterValues['*:Encoding'] = 'utf8'


# Starship

Invoke-Expression (&starship init powershell)        
