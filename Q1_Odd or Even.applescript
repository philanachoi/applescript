"Odd or Even 奇偶數辨別"


--Method 1
--==================================================================================
set input to text returned of (display dialog "Please enter a number between 1-1000." default answer "")

try
	set tmp to input as number
	if (tmp < 1) or (1000 < tmp) then error
	
	set ans to " is odd."
	if input mod 2 = 0 then set ans to " is even."
	display dialog input & ans buttons {"OK"} default button 1
on error
	display dialog "(The number you entered is incorrect.)" buttons "OK" default button 1
	error number -128
end try
--==================================================================================


--Method 2
--==================================================================================
set title to "Please enter a number between 1-1000."

set bool to false
repeat until bool
	set input to text returned of (display dialog title default answer "")
	repeat with i in input
		set bool to checkCharNum(contents of i)
		if not bool then exit repeat
	end repeat
	
	if bool then
		set bool to false
		set tmp to input as number
		if (1 ≤ tmp) and (tmp ≤ 1000) then set bool to true
	end if
	set title to "(The number you entered is incorrect.)" & return & "Please enter a number between 1-1000."
end repeat

set {odd, even} to {" is odd.", " is even."}
set ans to odd
if input mod 2 = 0 then set ans to even
display dialog input & ans buttons {"OK"} default button 1


--*********************************************************************************************************
--The argument must be a string
on checkCharNum(Char)
	if Char = "" then return false
	
	set charID to id of Char
	if charID ≥ 48 and charID ≤ 57 then return true
	return false
end checkCharNum
--*********************************************************************************************************
--==================================================================================