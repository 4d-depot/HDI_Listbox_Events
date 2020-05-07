//%attributes = {"invisible":true}

C_TEXT:C284($text)
C_COLLECTION:C1488($coll)
C_OBJECT:C1216($notDropped)

$text:=Document to text:C1236("employees.txt")

$coll:=JSON Parse:C1218($text)

$notDropped:=ds:C1482.Employee.all().drop()

$es:=ds:C1482.Employee.fromCollection($coll)