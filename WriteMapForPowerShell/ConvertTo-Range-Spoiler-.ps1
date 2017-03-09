<#	
Friday Puzzle, February 24, 2017
#>


<#
.SYNOPSIS
Converts a value from its current range to a target range.
	
.DESCRIPTION
ConvertTo-Range converts a value from its position in a current range to the same relative position in a target range. 

This function takes a current range (range 1), a target range (range 2), and a value in the current range. It returns the equivalent value in the target range.

For example, if the current range is 0-10, the target range is 20-30, and the value is 5, it returns 25, which is the equivalent value in the 20-30 range.
	
.PARAMETER Value
Specifies the integer value to be converted from the current range to the target range.

Although this value is evaluated based on its position in the current range, it can be any value, including a value outside of the current range and the target range.

.PARAMETER Range1_Start
Specifies the starting value in the current range. Enter an integer value. The value of Range1_Start can be less than or greater than the value of Range1_End.
	
.PARAMETER Range1_End
Specifies the ending value in the current range. Enter an integer value. The value of Range1_End can be less than or greater than the value of Range1_Start.
	
.PARAMETER Range2_Start
Specifies the starting value in the target range. Enter an integer value. The value of Range2_Start can be less than or greater than the value of Range2_End.
	
.PARAMETER Range2_End
Specifies the ending value in the target range. Enter an integer value. The value of Range2_End can be less than or greater than the value of Range2_Start.
	
.EXAMPLE
PS C:\> ConvertTo-Range -Value 40 -Range1_Start 40 -Range1_End 90 -Range2_Start 0 -Range2_End 100
0

This command maps the range 40-90 to the range 0-100. Then, given a value of 40 in the first range, it returns 0, the equivalent value in the second range.

.EXAMPLE
PS C:\> ConvertTo-Range -Value 300 -Range1_Start 40 -Range1_End 90 -Range2_Start 0 -Range2_End 100
520

This command demonstrates that the test value does not need to be within the starting or the target range. The resulting value in the target range is proportional to the input value in the current range. 

.NOTES
Based on the map() method in the Java Processing library
https://processing.org/reference/map_.html

Thanks to Andy Cahn at Chrysalis Schools for the math help.
#>
function ConvertTo-Range
{
	param
	(
		[Parameter(Mandatory = $true)]
		[Int]
		$Value,
		
		[Parameter(Mandatory = $true)]
		[Int]
		$Range1_Start,
		
		[Parameter(Mandatory = $true)]
		[Int]
		$Range1_End,
		
		[Parameter(Mandatory = $true)]
		[Int]
		$Range2_Start,
		
		[Parameter(Mandatory = $true)]
		[Int]
		$Range2_End
	)
	
	# ((y-max minus y-min) divided by (x-max minus x-min))
	$rangeScale = ($Range2_End - $Range2_Start) / ($Range1_End - $Range1_Start)
	
	# Y equals y-min plus ( (x minus x-min) times ...
	[int] $result = $Range2_Start + ($Value - $Range1_Start) * $rangeScale
	return $result
}