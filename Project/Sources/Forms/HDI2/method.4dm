

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		ARRAY TEXT:C222(_Descriptions;0)
		ARRAY TEXT:C222(_TabLineCode;0)
		ARRAY TEXT:C222(_TabTitles;0)
		
		READ ONLY:C145([INFOS:1])
		
		QUERY:C277([INFOS:1];[INFOS:1]PageNumber:4;"<=";9)
		ORDER BY:C49([INFOS:1];[INFOS:1]PageNumber:4;>)
		SELECTION TO ARRAY:C260([INFOS:1]Description:2;_Descriptions)
		
		QUERY:C277([INFOS:1];[INFOS:1]PageNumber:4;"<=";9)
		ORDER BY:C49([INFOS:1];[INFOS:1]PageNumber:4;>)
		SELECTION TO ARRAY:C260([INFOS:1]TabTitle:3;_TabTitles)
		
		QUERY:C277([INFOS:1];[INFOS:1]PageNumber:4;">=";10)
		ORDER BY:C49([INFOS:1];[INFOS:1]PageNumber:4;>)
		SELECTION TO ARRAY:C260([INFOS:1]Description:2;_TabLineCode)
		
		OBJECT SET VISIBLE:C603(*;"CheckBoxTrace";viewTrace )
		
		Form:C1466.employees:=ds:C1482.Employee.all()
		
		Form:C1466.italicAndBold:=New object:C1471("fontStyle";"italic";"fontWeight";"bold")
		
		Form:C1466.solution:=New collection:C1472
		Form:C1466.solution.push(New object:C1471("col1";"";"col2";"X";"col3";"X";"col4";""))
		Form:C1466.solution.push(New object:C1471("col1";"";"col2";"";"col3";"";"col4";""))
		
		manageTexts 
		
		RW 
		
		btnTrace:=False:C215
		
		
	: (Form event code:C388=On Page Change:K2:54)
		
		importData 
		
		Form:C1466.employees:=ds:C1482.Employee.all()
		
		OBJECT SET VISIBLE:C603(*;"CheckBoxTrace";viewTrace )
		
		  //Page 3
		OBJECT SET VISIBLE:C603(*;"HeaderClick@";False:C215)
		
		  //Page 4
		LISTBOX SELECT ROW:C912(*;"EmployeesLB2";0;lk remove from selection:K53:3)
		
		  //Page 5
		Form:C1466.try:=New collection:C1472
		Form:C1466.try.push(New object:C1471("col1";"";"col2";"";"col3";"";"col4";""))
		Form:C1466.try.push(New object:C1471("col1";"";"col2";"";"col3";"";"col4";""))
		
		Form:C1466.attempts:=0
		Form:C1466.win:=0
		
		OBJECT SET VISIBLE:C603(*;"SolutionLB";False:C215)
		OBJECT SET VISIBLE:C603(*;"GameOver@";False:C215)
		
		manageTexts 
		
		btnTrace:=False:C215
		
		
		
End case 
