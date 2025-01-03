"Calculate the tip 加一服務費"


set theBill to getNum("How much do you spend?", null, 0, null)
set person to getNum("How many people do you have?", integer, 1, null)

set tip to theBill * 0.1
set total to theBill + tip

set prompt to "Do you split the bill equally?"
set button to button returned of (display dialog prompt buttons {"No", "Yes"} default button "Yes")

set msg_spilt to return & "It cost $" & (total / person) & " per person."
if button = "No" then
	set msg_spilt to ""
	set sum to 0
	repeat with i from 1 to person
		set used to 100 - sum
		if i < person and sum < 100 then set used to getNum("What proportion of person " & i & " in the bill?", null, 0, used)
		
		set msg_spilt to msg_spilt & return & used & "% of the bill that the person " & i & " should pay $" & (total * (used / 100))
		set sum to sum + used
	end repeat
end if

set msgBill to "The bill is $" & theBill & ", and a service fee of 10% will be charged."
set msgPer to "The total amount is $" & total & " (" & theBill & "+" & tip & ")" & ", to be split among " & person & " people."
display dialog msgBill & return & msgPer & return & msg_spilt buttons {"OK"} default button 1







--*********************************************************************************************************
--theClass=integer/real
on getNum(prompt, theClass, min, max)
	if theClass = null then set theClass to {integer, real}
	
	set warnStr to ""
	set bool to false
	repeat until bool
		set num to text returned of (display dialog prompt & warnStr default answer "")
		repeat with i in num
			set thisItem to contents of i
			set bool to (checkCharNum(thisItem)) or (thisItem = ".")
			if not bool then exit repeat
		end repeat
		
		if bool then
			set num to num as number
			
			set {minBool, maxBool} to {true, true}
			if min ≠ null then set minBool to min ≤ num
			if max ≠ null then set maxBool to num ≤ max
			
			set bool to (class of num is in theClass) and (minBool and maxBool)
		end if
		set warnStr to return & "(The number you entered is incorrect. Please enter From " & min & " To " & max & ")"
	end repeat
	return num
end getNum
--*********************************************************************************************************

--*********************************************************************************************************
--The argument must be a string
on checkCharNum(Char)
	if Char = "" then return false
	
	set charID to id of Char
	if charID ≥ 48 and charID ≤ 57 then return true
	return false
end checkCharNum
--*********************************************************************************************************