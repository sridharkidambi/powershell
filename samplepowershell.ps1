$a=1+2
# get-member cmdlets is an object
# $a |get-member
# $a.ToDecimal(4,2)
$files=dir
$files[0].Name
echo "iam sk" 

# $files[1] | Get-Member
$files |Sort-Object -Property CreationTime
$files |Sort-Object -Descending Name
$files |sort -Property Name

$files | Where-Object {$_.Length -gt 4}

foreach($file  in $files){
   $file.Name
}
1..10 |foreach{"*"*$_}

# arrays
$strcomputers =@("sccc","dsdsdfgfiuisd","rsbfkfuiwehifu")
$strcomputers | Where-Object  {$_.Equals("sccc")}  
# $strcomputers |Get-Member       
$strcomputers.Length  
$strcomputers | foreach{$_ +" "+$_.Length}     
$employeeNumbers=@{"name"="Sridhar Kidambi";"Age"=34}    
$employeeNumbers   
$files |Format-Wide   -Property Length 
$files | select Name      
$files |Format-Table   -Property path  

Get-Process | Sort-Object ProcessName  | Group-Object Name  | Out-File "results.txt"         

Get-Process | ConvertTo-Html |Out-File "result.html"    
# open in browser
Invoke-Expression ./result.htm                                                                                                                                                                                                                                                                                                                                                             