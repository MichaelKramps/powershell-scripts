# This short script takes an array of directory files paths,
# a defined number of years, and an array of file types
# It recursively finds all files of the specified types that were last accessed more than $xYears ago
# Then deletes them upon confirmation

$directories = @("C:\Users\Michael\test", "C:\Users\Michael\test2")
$xYears = 0
$fileTypes = @("*.jpg", "*.png", "*.gif")

$currentDate = get-date
$xYearsAgo = $currentDate.addyears(-$xyears)

$directories | foreach-object {get-childitem -path $_ -recurse -include $fileTypes | where-object -property lastaccesstime -lt $xYearsAgo | remove-item -confirm}