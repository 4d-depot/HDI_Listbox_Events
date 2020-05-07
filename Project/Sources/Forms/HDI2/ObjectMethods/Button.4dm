

If (btnTrace)
	TRACE:C157
End if 



Form:C1466.attempts:=0
Form:C1466.win:=0

Form:C1466.try.clear()
Form:C1466.try.push(New object:C1471("col1";"";"col2";"";"col3";"";"col4";""))
Form:C1466.try.push(New object:C1471("col1";"";"col2";"";"col3";"";"col4";""))

Form:C1466.try:=Form:C1466.try

OBJECT SET VISIBLE:C603(*;"GameOver@";False:C215)
OBJECT SET VISIBLE:C603(*;"FormEvent@";False:C215)