#Friday PowerShell Puzzle: Write a map method for PowerShell

We have a really fun puzzle for this week. I've been taking a Coursera class on mapping geospatial data. One of the Java libraries that we're using has a neat [**map() method**](https://processing.org/reference/map_.html) that maps a value from one range to another. 

For this week's puzzle, we'll write **ConvertTo-Range**, a map() function for PowerShell. But, instead of providing instructions, I've written a file of [Pester](https://www.powershellgallery.com/packages/Pester/4.0.2) tests, ConvertTo-Range.Tests.ps1, and a ConvertTo-Range.ps1 with comment-based help.

If you run the test file now, all the tests fail. Your mission is to write a ConvertTo-Range function that makes all of the tests pass. You get to dust off your math skills and try your hand at *test-driven development* with Pester.

Files: 

- [ConvertTo-Range.ps1](https://github.com/sapientechnologies/FridayPowerShellPuzzle/blob/master/WriteMapForPowerShell/ConvertTo-Range.ps1) with comment-based help (hint*)
- [ConvertTo-Ranges.Tests.ps1](https://github.com/sapientechnologies/FridayPowerShellPuzzle/blob/master/WriteMapForPowerShell/ConvertTo-Range.Tests.ps1)


Resources: 

- [Pester module in PowerShell Gallery](https://www.powershellgallery.com/packages/Pester)
- [Pester project on GitHub](https://github.com/pester/pester)
- [Getting Started with Pester (J. Jares)](http://www.powershellmagazine.com/2014/03/12/get-started-with-pester-powershell-unit-testing-framework/)
- [Using Pester for Test-Driven Development in PowerShell (M. Robbins)](http://mikefrobbins.com/2014/10/09/using-pester-for-test-driven-development-in-powershell/)
- [How to run a Pester test (J. Blender)](http://info.sapien.com/index.php/scripting/scripting-modules/how-to-run-a-pester-test)- [Invoke-Pester: Running selected tests (J. Blender)](http://info.sapien.com/index.php/scripting/scripting-modules/invoke-pester-running-selected-tests)
- [How to pass parameters to a Pester test script (J. Blender)](http://info.sapien.com/index.php/scripting/scripting-modules/how-to-pass-parameters-to-a-pester-test-script)
- [Testing Pester Code Coverage (J. Blender)](http://info.sapien.com/index.php/scripting/scripting-modules/testing-pester-code-coverage)
- [VIDEO: Real-World Test-Driven Development with Pester](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=0ahUKEwjA9af1-qnSAhXqslQKHTooAfkQtwIIHDAA&url=https%3A%2F%2Fwww.youtube.com%2Fwatch%3Fv%3DgssAtCeMOoo&usg=AFQjCNFu2aODWIXv9vVmlQNRLIq0OJoAGg&sig2=ix_YevMSTR2oBev4nVagqA)

Thanks to **Andy Cahn** at Chrysalis School for help with the math! 


----------
Like this PowerShell puzzle?

[This repository](https://github.com/SAPIENTechnologies/FridayPowerShellPuzzle) includes all of the [SAPIEN Technologies](https://sapien.com/blog) Friday PowerShell puzzles. 

To read the solutions to our Friday PowerShell Puzzles, see [Friday Puzzle Solutions](https://www.sapien.com/blog/topics/puzzle/). 