Import-Csv C:\Users\bzawlocki\Desktop\userlist.csv | ForEach-Object {
$UPN = $_.sAMAccountName; Get-ADUser -Filter { sAMAccountName -Eq $UPN } -Properties sAMAccountName, mail, physicalDeliveryOfficeName, Country, Department, Title
} | export-csv C:\Users\bzawlocki\Desktop\userlist_result.csv -NoTypeInformation 

