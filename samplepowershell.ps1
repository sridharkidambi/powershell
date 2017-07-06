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
1..100 |foreach{"*"*$_}