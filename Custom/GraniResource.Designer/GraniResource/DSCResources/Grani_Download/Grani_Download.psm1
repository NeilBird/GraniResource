function Get-TargetResource
{
	[CmdletBinding()]
	[OutputType([System.Collections.Hashtable])]
	param
	(
		[parameter(Mandatory = $true)]
		[System.String]
		$Uri,

		[parameter(Mandatory = $true)]
		[System.String]
		$DestinationPath
	)

	#Write-Verbose "Use this cmdlet to deliver information about command processing."

	#Write-Debug "Use this cmdlet to write debug information while troubleshooting."


	<#
	$returnValue = @{
		Uri = [System.String]
		DestinationPath = [System.String]
		Header = [Microsoft.Management.Infrastructure.CimInstance[]]
		ContentType = [System.String]
		Credential = [System.Management.Automation.PSCredential]
		UserAgent = [System.String]
		AllowRedirect = [System.Boolean]
		CacheLocation = [System.String]
		Ensure = [System.String]
	}

	$returnValue
	#>
}


function Set-TargetResource
{
	[CmdletBinding()]
	param
	(
		[parameter(Mandatory = $true)]
		[System.String]
		$Uri,

		[parameter(Mandatory = $true)]
		[System.String]
		$DestinationPath,

		[Microsoft.Management.Infrastructure.CimInstance[]]
		$Header,

		[System.String]
		$ContentType,

		[System.Management.Automation.PSCredential]
		$Credential,

		[System.String]
		$UserAgent,

		[System.Boolean]
		$AllowRedirect,

		[System.String]
		$CacheLocation
	)

	#Write-Verbose "Use this cmdlet to deliver information about command processing."

	#Write-Debug "Use this cmdlet to write debug information while troubleshooting."

	#Include this line if the resource requires a system reboot.
	#$global:DSCMachineStatus = 1


}


function Test-TargetResource
{
	[CmdletBinding()]
	[OutputType([System.Boolean])]
	param
	(
		[parameter(Mandatory = $true)]
		[System.String]
		$Uri,

		[parameter(Mandatory = $true)]
		[System.String]
		$DestinationPath,

		[Microsoft.Management.Infrastructure.CimInstance[]]
		$Header,

		[System.String]
		$ContentType,

		[System.Management.Automation.PSCredential]
		$Credential,

		[System.String]
		$UserAgent,

		[System.Boolean]
		$AllowRedirect,

		[System.String]
		$CacheLocation
	)

	#Write-Verbose "Use this cmdlet to deliver information about command processing."

	#Write-Debug "Use this cmdlet to write debug information while troubleshooting."


	<#
	$result = [System.Boolean]
	
	$result
	#>
}


Export-ModuleMember -Function *-TargetResource

