
If (btnTrace)
	TRACE:C157
End if 


Form:C1466.event:=FORM Event:C1606

Case of 
		
	: (Form event code:C388=On Header Click:K2:40)
		
		Case of 
			: ((Form:C1466.event.columnName="firstname") | (Form:C1466.event.columnName="salary"))
				Form:C1466.employees:=Form:C1466.employees.orderBy(Form:C1466.event.columnName+", lastname")
				
			: (Form:C1466.event.columnName="lastname")
				Form:C1466.employees:=Form:C1466.employees.orderBy(Form:C1466.event.columnName+", firstname")
		End case 
		
		OBJECT SET VISIBLE:C603(*;"HeaderClick@";True:C214)
		
		manageTexts 
		
End case 







