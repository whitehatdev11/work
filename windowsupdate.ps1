
Function AutoUpdateWindows
{
     #Adds PSgallery to trusted repo list.
     Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted
     #Downloads PSWindowsUpdate Package
     Install-Module PSWindowsUpdate
     #Imports cmdlets from C# dll
     Import-Module -Name PSWindowsUpdate
     #Sets repo back to untrusted status.
     Set-PSRepository -Name 'PSGallery' -InstallationPolicy Untrusted
     #Downloads and installs packages.
     Get-WindowsUpdate -Verbose
     Install-WindowsUpdate -Install -AcceptAll -Verbose

}
AutoUpdateWindows
