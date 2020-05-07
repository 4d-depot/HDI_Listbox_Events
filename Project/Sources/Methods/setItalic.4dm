//%attributes = {"invisible":true}
C_OBJECT:C1216($0)
C_OBJECT:C1216($meta)


$meta:=New object:C1471
$meta.cell:=New object:C1471


Case of 
	: (This:C1470.firstname="Dana")
		$meta.cell.firstname:=Form:C1466.italicAndBold
		
	: (This:C1470.lastname="Angel")
		$meta.cell.lastname:=Form:C1466.italicAndBold
		
	: (This:C1470.salary=1000)
		$meta.cell.salary:=Form:C1466.italicAndBold
		
End case 





$0:=$meta
