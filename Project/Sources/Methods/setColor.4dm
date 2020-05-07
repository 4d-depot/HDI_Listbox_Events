//%attributes = {"invisible":true}


C_OBJECT:C1216($event;$0;$meta)

$event:=FORM Event:C1606
$meta:=New object:C1471

Case of 
	: ($event.code=On Display Detail:K2:22)
		If ($event.isRowSelected)
			$meta.fill:="lightblue"
		End if 
End case 

$0:=$meta