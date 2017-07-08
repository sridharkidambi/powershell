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
# Invoke-Expression ./result.htm 
# Invoke-Expression  ./Census1000.csv   
$tablecsv= Import-Csv ./Census1000.csv
$tablecsv[1] | Format-Table
$response = Invoke-WebRequest -Uri "www.google.com" 
echo "itesm"
$response.items
echo "itesm"
# try{

# $myinvoke= Invoke-Expression  -Command  & ./Census1000.csv
# } catch{
#     $_
# }

$tablecsv |Get-Member

$tablecsv[0].name
echo "desc name top 1"
$tablecsv | Sort-Object -Property name -Descending |Format-Table -Property name,rank
($tablecsv | Sort-Object -Property name -Descending)[0].name
$tablecsv | Sort-Object -Property name -Descending | select -First 1 name
# highest hispanic
$tablecsv | foreach{if($_.pcthispanic -gt $highest.pcthispanic){$highest=$_}}

$highest.pcthispanic
# functions:

function Do-Something() {
    1+2
}
 Do-Something;

 function Do-AddSomething() {

     Param([int] $n1,[int] $n2)
   return ($n1+$n2);
}
 $addresult=Do-AddSomething -n1 5 -n2 9
 echo "print add results:"
 $addresult

echo "space"
param([string] $dir="/usr/local/share/dotnet" )
function  findsumdirectory ($dir) {
$dirresult =Get-ChildItem $dir -Recurse | Measure-Object -Property Length -Sum
return ([math]::Round(($dirresult).sum/1GB,2));
}
(findsumdirectory -dir  $dir).ToDouble()