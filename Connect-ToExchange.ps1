<#
    .SYNOPSIS
    This script connects to an Exchange Server using remote Powershell.

    Thomas Stensitzki
	
    THIS CODE IS MADE AVAILABLE AS IS, WITHOUT WARRANTY OF ANY KIND. THE ENTIRE 
    RISK OF THE USE OR THE RESULTS FROM THE USE OF THIS CODE REMAINS WITH THE USER.

    Send comments and remarks to: support@granikos.eu
	
    Version 1.1, 2017-04-05

    .DESCRIPTION
    This script helps administrators and support desk personnel to connect an Exchange Server 2013+ using remote PowerShell.
    
    You can either connect to a dedicated Exchange Server or connect to a randomly selected Exchange Server. 

    You can implement the function in your own scripts to connect to Exchange remotely. 

    .LINK
    http://scripts.Granikos.eu
    
    .NOTES 
    Requirements
    - Windows Server 2008 R2 SP1+
    - Windwos 7 SP1+

    Revision History 
    -------------------------------------------------------------------------------- 
    1.0     Initial community release

    .PARAMETER Server
    Exchange Server to connect to. By default a server is selected randomly.

    .EXAMPLE
    Connect to the specified server EX01
    ./Connect-ToExchange.ps1 -Server EX01

    .EXAMPLE
    Connect to a randomly selected server
    ./Connect-ToExchange.ps1
#>

[CmdletBinding()]
param (
    [string]$Server
)

$Serverlist = "EX01","EX02","EX03"

function Connect-ToExchange {
    If ($Server.Length -ne 0) {
      # Connect to a dedicated Exchange Server 
      $ConnectToServer = $Server
    }
    else {
      # Select an Exchange Server randomly
      $ConnectToServer = Get-Random -InputObject $Serverlist
    }
    
    # Query for logon credentials
    $cred = Get-Credential -Message 'Enter your login credentials' 
    
    Write-Host ('Connecting to server: {0}' -f ($ConnectToServer))
    
    # Set connection Uri
    $connectionUri = ('http://{0}/powershell?serializationLevel=Full' -f $ConnectToServer)
    
    # Create remote PowerShell Session
    $session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri $connectionUri -Credential $cred -Authentication Kerberos -AllowRedirection -WarningAction Ignore 

    # Import Session
    Import-PSSession $session -DisableNameChecking -AllowClobber
}

# Call function
Connect-ToExchange