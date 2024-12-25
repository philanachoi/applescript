"Email slicer ¹q¶l°ì¦W§PÂ_¾¹"
--xxx@gmail.com

set title to "Please enter your e-mail."
set banList to {"~", "!", "#", "$", "%", "^", "&", "*", "(", ")", "+", "=", "{", "}", "[", "]", ";", ":", "<", ">", ",", "?", "/", " ", "'", "\"", "|"}

set bool to false
repeat until bool
	set input to userInput(title, banList)
	set tmp to stringToList(input, "@")
	if ((count tmp) = 2) and ("" is not in tmp) then set bool to true
end repeat
set {userName, mailUrl} to tmp

set mailName to text 1 thru ((offset of "." in mailUrl) - 1) of mailUrl as string

set mailList to {"hotmail", "outlook", "gmail", "yahoo"}
set msg to "You've got your own custom setup at "
if (mailName is in mailList) then set msg to "Your email is registered with "

if mailName = "gmail" then set mailName to "google"
if mailName is in {"hotmail", "outlook"} then set mailName to "microsoft"

set prompt to msg & mailName & "."
display dialog prompt buttons "OK" default button 1




--*********************************************************************************************************
on stringToList(theString, delimiters)
	set AppleScript's text item delimiters to delimiters
	set outPut to every text item of theString
	set AppleScript's text item delimiters to ""
	return outPut
end stringToList
--*********************************************************************************************************

--*********************************************************************************************************
on userInput(title, banList)
	set theWarn to ""
	set bool to false
	repeat until bool
		set theStr to text returned of (display dialog title & theWarn default answer "")
		repeat with i in banList
			set bool to bannedChar(theStr, contents of i)
			if bool = false then exit repeat
		end repeat
		set theWarn to return & "Invalid character " & contents of i & " is not allowed."
	end repeat
	return theStr
end userInput
--*********************************************************************************************************
on bannedChar(theStr, banChar)
	if (offset of banChar in theStr) > 0 then return false
	return true
end bannedChar
--*********************************************************************************************************