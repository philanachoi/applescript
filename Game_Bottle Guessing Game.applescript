--�s�@����
set theList to countOn(5)
set userInput to theList as string
set title to "������" & return & "�C�����k�G" & userInput & "�|�H���ƦC�A�бN�Ʀr��J���T��m"
set theList to randomNum(theList) as string

--�C���}�l
set prompt to ""
set bool to false
repeat until bool
	set input to text returned of (display dialog title & return & prompt default answer userInput)
	set userInput to ""
	
	set match to 0
	repeat with i from 1 to count input
		if (item i of input) = (item i of theList) then set match to match + 1
	end repeat
	set prompt to prompt & input & ">>>����" & match & "�Ӧr" & return
	set bool to input = theList
end repeat
display alert "�����A���׫Y" & theList message prompt


--************************************************************************
on randomNum(theList)
	set theLength to count theList
	repeat with i from 1 to theLength
		set var to random number from 1 to theLength
		set tmp to item i of theList
		set item i of theList to item var of theList
		set item var of theList to tmp
	end repeat
	return theList
end randomNum
--************************************************************************
on countOn(num)
	if num = 1 then return 1
	return countOn(num - 1) & {num}
end countOn
--************************************************************************