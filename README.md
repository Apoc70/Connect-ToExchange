# Connect-ToExchange.ps1
This script connects to an Exchange Server using remote Powershell.

## Description
This script helps administrators and support desk personnel to connect an Exchange Server 2013+ using remote PowerShell.
    
You can either connect to a dedicated Exchange Server or connect to a randomly selected Exchange Server. 

You can implement the function in your own scripts to connect to Exchange remotely.

## Parameters
### Server  
Exchange Server to connect to. By default a server is selected randomly.  


## Examples
```
./Connect-ToExchange.ps1 -Server EX01
```
Connect to the specified server EX01

```
./Connect-ToExchange.ps1
```
Connect to a randomly selected server
  
## TechNet Gallery
Find the script at TechNet Gallery
* https://gallery.technet.microsoft.com/Connect-to-Exchange-Server-0fefe0e4


## Credits
Written by: Thomas Stensitzki

## Social

* My Blog: http://JustCantGetEnough.Granikos.eu 
* Archived Blog: http://www.sf-tools.net/
* Twitter: https://twitter.com/stensitzki
* LinkedIn:	http://de.linkedin.com/in/thomasstensitzki
* Github: https://github.com/Apoc70

For more Office 365, Cloud Security and Exchange Server stuff checkout services provided by Granikos

* Blog: http://blog.granikos.eu/
* Website: https://www.granikos.eu/en/
* Twitter: https://twitter.com/granikos_de