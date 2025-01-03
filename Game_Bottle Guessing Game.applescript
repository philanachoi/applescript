--製作答案
set theList to countOn(5)
set userInput to theList as string
set title to "估次序" & return & "遊戲玩法：" & userInput & "會隨機排列，請將數字放入正確位置"
set theList to randomNum(theList) as string

--遊戲開始
set prompt to ""
set bool to false
repeat until bool
	set input to text returned of (display dialog title & return & prompt default answer userInput)
	set userInput to ""
	
	set match to 0
	repeat with i from 1 to count input
		if (item i of input) = (item i of theList) then set match to match + 1
	end repeat
	set prompt to prompt & input & ">>>中左" & match & "個字" & return
	set bool to input = theList
end repeat
display alert "全中，答案係" & theList message prompt


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