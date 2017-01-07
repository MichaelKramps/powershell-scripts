# This short script takes an array of directory files paths 
# and a defined number of years
# It finds all files that were last accessed more than $xYears ago
# Then deletes them upon confirmation

$directories = @("C:\Users\Michael\Downloads", "C:\Users\Michael\Documents")
$xYears = 2

$currentDate = get-date
$xYearsAgo = $currentDate.addyears(-$xyears)

$directories | foreach-object {get-childitem -path $_ | where-object -property lastaccesstime -lt $xYearsAgo | remove-item -confirm}

# To speed up process, you could remove the -confirm parameter