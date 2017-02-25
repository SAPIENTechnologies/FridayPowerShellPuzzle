<#	
	.NOTES
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2017 v5.4.135
	 Created on:   	2/21/2017 9:31 PM
	 Created by:   	June Blender
	 Organization: 	SAPIEN Technologies, Inc.
	 Filename:     	
	===========================================================================
	.DESCRIPTION
		A description of the file.
#>

#Requires -Module Pester

$directory = Split-Path -Parent $MyInvocation.MyCommand.Path
$script = (Split-Path -Leaf $MyInvocation.MyCommand.Path).Replace(".Tests.", ".")
. "$directory\$script"

Describe "ConvertTo-Range" {
	
	Context "SmallToLarge_StandardValues" {
		It "Mid-range test" {
			# map(60, 40, 90, 0, 255) is 102.0
			ConvertTo-Range -Value 60 -Range1_Start 40 -Range1_End 90 -Range2_Start 0 -Range2_End 255 | Should Be 102
		}
		It "Min-range test" {
			# map(40, 40, 90, 0, 255) is 0
			ConvertTo-Range -Value 40 -Range1_Start 40 -Range1_End 90 -Range2_Start 0 -Range2_End 255 | Should Be 0
		}
		It "Max-range test" {
			# map(90, 40, 90, 0, 255) is 255
			ConvertTo-Range -Value 90 -Range1_Start 40 -Range1_End 90 -Range2_Start 0 -Range2_End 255 | Should Be 255
		}
	}
	
	Context "LargeToSmall_StandardValues" {
		It "Mid-range test" {
			# map(60, 10, 500, 40, 90) is 45
			ConvertTo-Range -Value 60 -Range1_Start 10 -Range1_End 500 -Range2_Start 40 -Range2_End 90 | Should Be 45
		}
		It "Min-range test" {
			# map(250, 10, 500, 40, 90) is 64
			ConvertTo-Range -Value 250 -Range1_Start 10 -Range1_End 500 -Range2_Start 40 -Range2_End 90 | Should Be 64
		}
		It "Max-range test" {
			# map(450, 10, 500, 40, 90) is 84
			ConvertTo-Range -Value 450 -Range1_Start 10 -Range1_End 500 -Range2_Start 40 -Range2_End 90 | Should Be 85
		}
	}
	
	Context "SmallToLarge_OutOfRange" {
		It "Mid-range test" {
			# map(30, 40, 90, 0, 100) is -20
			ConvertTo-Range -Value 30 -Range1_Start 40 -Range1_End 90 -Range2_Start 0 -Range2_End 100 | Should Be -20
		}
		It "Min-range test" {
			# map(100, 40, 90, 0, 255) is 306
			ConvertTo-Range -Value 100 -Range1_Start 40 -Range1_End 90 -Range2_Start 0 -Range2_End 255 | Should Be 306
		}
		It "Max-range test" {
			# map(300, 40, 90, 0, 255) is 1326
			ConvertTo-Range -Value 300 -Range1_Start 40 -Range1_End 90 -Range2_Start 0 -Range2_End 255 | Should Be 1326
		}
	}
	
	Context "FunStuff" {
		It "Negative_Range1" {
			# map(-80, -90, -40, 0, 255) is 51
			ConvertTo-Range -Value -80 -Range1_Start -90 -Range1_End -40 -Range2_Start 0 -Range2_End 255 | Should Be 51
		}
		It "Negative_Range2" {
			# map(80, 40, 90, -100, -10) is -28
			ConvertTo-Range -Value 80 -Range1_Start 40 -Range1_End 90 -Range2_Start -100 -Range2_End -10 | Should Be -28
		}
		It "Temperatures: F->C" {
			# map(68, 32, 212, 0, 100) is 20
			ConvertTo-Range -Value 68 -Range1_Start 32 -Range1_End 212 -Range2_Start 0 -Range2_End 100 | Should Be 20
		}
		It "Temperatures: C->F" {
			# map(30, 0, 100, 32, 212) is 86
			ConvertTo-Range -Value 30 -Range1_Start 0 -Range1_End 100 -Range2_Start 32 -Range2_End 212 | Should Be 86
		}		
		It "Min > Max Range" {
			# map(60, 90, 40, 0, 255) is 153
			ConvertTo-Range -Value 60 -Range1_Start 90 -Range1_End 40 -Range2_Start 0 -Range2_End 255 | Should Be 153
		}		
		It "won't work" {
			# map(40, 40, 40, 0, 100) is NaN
			{ ConvertTo-Range -Value 40 -Range1_Start 40 -Range1_End 40 -Range2_Start 0 -Range2_End 100 } | Should Throw
		}
	}
}