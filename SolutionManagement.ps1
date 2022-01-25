# Set these before running the script, I put the solution files in the solution folder

$solutionDir = "C:\Users\cajetzer\OneDrive - Microsoft\Documents\GitHub\CCSRB-Project\Solutions\"
$solutionVersion = "1.0.0.0"
$solutionName = "TechReview"

# The following commands execute the export using the variables above

pac solution export --path ${solutionDir}${solutionName}-${solutionVersion}.zip --name $solutionName --managed false
pac solution export --path ${solutionDir}${solutionName}-${solutionVersion}_managed.zip --name $solutionName --managed true