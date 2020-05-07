
C_OBJECT:C1216($line;$tryLine)
C_TEXT:C284($value)


If (btnTrace)
	TRACE:C157
End if 


Case of 
	: (Form event code:C388=On Clicked:K2:4)
		
		Form:C1466.event:=FORM Event:C1606
		OBJECT SET VISIBLE:C603(*;"FormEvent@";True:C214)
		
		If ((Form:C1466.attempts<3) & (Form:C1466.win<2))
			
			Form:C1466.attempts:=Form:C1466.attempts+1
			
			$line:=Form:C1466.solution[Form:C1466.event.row-1]
			$value:=$line["col"+String:C10(Form:C1466.event.column)]
			
			If ($value="X")
				$tryLine:=Form:C1466.try[Form:C1466.event.row-1]
				$tryLine["col"+String:C10(Form:C1466.event.column)]:=$value
				Form:C1466.win:=Form:C1466.win+1
			End if 
			
			Form:C1466.try:=Form:C1466.try
			
			If (Form:C1466.win=2)
				OBJECT SET VISIBLE:C603(*;"GameOverWon";True:C214)
			Else 
				If ((Form:C1466.attempts>=3) & (Form:C1466.win<2))
					OBJECT SET VISIBLE:C603(*;"GameOverLost";True:C214)
				End if 
				If ((Form:C1466.attempts>=3) & (Form:C1466.win=2))
					OBJECT SET VISIBLE:C603(*;"GameOverWon";True:C214)
				End if 
			End if 
		End if 
		
End case 