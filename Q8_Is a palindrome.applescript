"Is a palindrome 回文判斷（如madam）"

set output to {}
set bool to false
repeat until bool
	set input to display dialog "Please enter a word." default answer "" buttons {"Next", "Finish"} default button "Finish"
	if button returned of result = "Finish" then set bool to true
	set input to text returned of input
	set mirror to reverse of characters of input as string
	
	set {emoji, ans} to {"⭕️ ", " is a palindrome."}
	if input ≠ mirror then set {emoji, ans} to {"❌ ", " isn't a palindrome."}
	set the end of output to emoji & input & ans
	if bool = false then set the end of output to return
end repeat
display dialog (output as string) buttons {"OK"} default button 1
