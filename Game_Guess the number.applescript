set {min, max} to {1, 100}
set bingo to random number from min to max
set chances to 5

set theTimes to chances
repeat until chances = 0
	set theChance to chances & " chances."
	if chances = 1 then set theChance to "ONE MORE chance."
	
	set prompt to "you get " & theChance & return & "FROM " & min & " TO " & max
	set warnStr to ""
	set bool to false
	repeat until bool
		set num to text returned of (display dialog "Guess The Number, " & prompt & warnStr default answer "")
		repeat with i in num
			set bool to checkCharNum(contents of i)
			if not bool then exit repeat
		end repeat
		
		if bool then
			set num to num as number
			if (num < min) or (max < num) then set bool to false
		end if
		set warnStr to return & "(The number you entered is incorrect.)"
	end repeat
	
	if num = bingo then exit repeat
	
	if bingo < num then
		set max to num - 1
	else
		set min to num + 1
	end if
	
	set chances to chances - 1
end repeat

set prompt to "❌Sorry, All The Chances Have Been Used Up!"
if num = bingo then set prompt to "⭕️YOU WIN!"

set prompt to prompt & return & "The Number Is " & bingo
return display dialog prompt buttons {"OK"} default button 1


--*********************************************************************************************************
--The argument must be a string
on checkCharNum(Char)
	if Char = "" then return false
	
	set charID to id of Char
	if charID ≥ 48 and charID ≤ 57 then return true
	return false
end checkCharNum
--*********************************************************************************************************