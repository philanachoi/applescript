set bool to false
repeat until bool
	set {paperS, scissorsS, rockS} to {"🖐", "✌️", "✊"}
	set buttonList to {paperS, scissorsS, rockS}
	set pc to item (random number from 1 to 3) of buttonList
	set user to button returned of (display dialog "Rock Paper Scissors" buttons buttonList)
	
	if user = paperS then
		set theRule to {win:"✊", lose:"✌️"}
	else if user = scissorsS then
		set theRule to {win:"🖐", lose:"✊"}
	else
		set theRule to {win:"✌️", lose:"🖐"}
	end if
	set {win, lose} to {win of theRule, lose of theRule}
	
	if win = pc then
		set theResult to "⭕️ YOU WIN!"
	else if lose = pc then
		set theResult to "❌ YOU LOSE!"
	else
		set theResult to "🤝 IT'S A TIE"
	end if
	set prompt to theResult & return & return & "NPC: " & pc & return & "YOU: " & user
	
	display dialog prompt buttons {"AGAIN", "FINISH"} default button 1
	if button returned of result = "FINISH" then set bool to true
end repeat