"What's my acronym 字母縮寫"


set input to words of text returned of (display dialog "Please enter a sentence." default answer "")

set output to ""
repeat with i in input
	set output to output & getChar(item 1 of i, true)
end repeat
display dialog output buttons {"OK"} default button 1


--true="Upper", false="Lower"
on getChar(theChar, type)
	set theChar to theChar as string
	set theID to id of theChar
	
	set {theType, convert} to {null, null}
	if (65 ≤ theID) and (theID ≤ 90) then set {theType, convert} to {true, (theID + 32)}
	if (97 ≤ theID) and (theID ≤ 122) then set {theType, convert} to {false, (theID - 32)}
	
	if theType = null then return theChar
	if type ≠ theType then return character id convert
	return theChar
end getChar