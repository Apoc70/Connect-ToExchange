# Connect-ToExchange.ps1

This script connects to an Exchange Server using remote Powershell.

## Description

This script helps administrators and support desk personnel to connect an Exchange Server 2013+ using remote PowerShell

You can either connect to a dedicated Exchange Server or connect to a randomly selected Exchange Server.

You can implement the function in your own scripts to connect to Exchange remotely.

## Parameters

### Server  

Exchange Server to connect to. By default a server is selected randomly.  

## Examples

``` PowerShell
Connect-ToExchange.ps1 -Server EX01
```

Connect to the specified server EX01

``` PowerShell
Connect-ToExchange.ps1
```

Connect to a randomly selected server

## Note

THIS CODE IS MADE AVAILABLE AS IS, WITHOUT WARRANTY OF ANY KIND. THE ENTIRE
RISK OF THE USE OR THE RESULTS FROM THE USE OF THIS CODE REMAINS WITH THE USER.

## Credits

Written by: Thomas Stensitzki

## Stay connected

- My Blog: [http://justcantgetenough.granikos.eu](http://justcantgetenough.granikos.eu)
- Twitter: [https://twitter.com/stensitzki](https://twitter.com/stensitzki)
- LinkedIn: [http://de.linkedin.com/in/thomasstensitzki](http://de.linkedin.com/in/thomasstensitzki)
- Github: [https://github.com/Apoc70](https://github.com/Apoc70)
- MVP Blog: [https://blogs.msmvps.com/thomastechtalk/](https://blogs.msmvps.com/thomastechtalk/)
- Tech Talk YouTube Channel (DE): [http://techtalk.granikos.eu](http://techtalk.granikos.eu)

For more Office 365, Cloud Security, and Exchange Server stuff checkout services provided by Granikos

- Blog: [http://blog.granikos.eu](http://blog.granikos.eu)
- Website: [https://www.granikos.eu/en/](https://www.granikos.eu/en/)
- Twitter: [https://twitter.com/granikos_de](https://twitter.com/granikos_de)