#Friday Puzzle: Why doesn’t Include include?

On Friday, January 20, 2017, I posted the following puzzle on [Twitter](https://twitter.com/juneb_get_help/status/822448851579596800) and [Facebook](https://www.facebook.com/SAPIENTech/photos/a.10151095012027283.433079.82797372282/10154242716222283/?type=3) (and [here](https://www.facebook.com/groups/powershell/permalink/1321915161199992/?match=cHV6emxlLGZyaWRheQ%3D%3D)!).

It shows a [Get-ChildItem](http://technet.microsoft.com/library/hh847897(v=wps.630).aspx) command where the value of the **Path** parameter is $PSHome, the Windows PowerShell installation directory, and the value of the **Include** parameter is ‘*ps1xml.’ The command returns nothing — not a single file — even though the next command shows that there are 14 *.ps1xml files in the root of the $PSHome directory.

What happened here? Why didn’t the Get-ChildItem -Include command work?

![](https://i0.wp.com/www.sapien.com/blog/wp-content/uploads/2017/01/image001.png?ssl=1)

Read the solution: [Friday Puzzle: Why doesn't Include include?](https://www.sapien.com/blog/2017/01/30/friday-puzzle-why-doesnt-include-include/). 


----------
Like this PowerShell puzzle?

[This repository](https://github.com/SAPIENTechnologies/FridayPowerShellPuzzle) includes all of the [SAPIEN Technologies](https://sapien.com/blog) Friday PowerShell puzzles. 

To read the solutions to our Friday PowerShell Puzzles, see [Friday Puzzle Solutions](https://www.sapien.com/blog/?s=friday+puzzle). 