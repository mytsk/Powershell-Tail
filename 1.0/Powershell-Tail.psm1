<#  
  .SYNOPSIS   
    Tails a file in Powershell, just like tail in Linux.
  .DESCRIPTION
	Tail just like linux!
  .PARAMETER file
	Name of file to tail.
  .PARAMETER n
	Number of lines to initially tail. Default if not specified is 10 last lines.
  .EXAMPLE  
	Tail auth.log
   .EXAMPLE  
	tail -file auth.log
	.EXAMPLE  
	tail -file auth.log -n 100

   .NOTES
	Version:	1.0
	Author:		mytsk
	Creation Date:	2020-08-28
	Purpose/Change: Initial development
  .LINK
	https:/www.github.com/mytsk/Powershell-Tail
#>
function tail {
	Param(
		[parameter(position = 0, Mandatory = $false)]$file,
		[parameter(position = 1, Mandatory = $false)][int]$n)

	if (!$n) {
		$n = 10	
	}
	Get-Content -LiteralPath $file -wait -last $n
}
Export-ModuleMember -Function 'tail'