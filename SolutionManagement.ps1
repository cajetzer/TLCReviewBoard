# AUTH SNIPPETS
pac auth create --kind DATAVERSE --url https://hlstechreviewdev.crm.dynamics.com/ --name TLCRevewBoardDev
pac auth create --kind DATAVERSE --url https://hlstechreview.crm.dynamics.com/ --name TLCRevewBoardProd

pac auth list
pac auth who
pac auth select --index 3

# EXPORT SOLUTIONS
# Set these before running the script

$solutionDir = ".\Solutions\"
$solutionVersion = "1.1.0.9"
$newSolutionVersion = "1.1.0.10"
$solutionName = "TechReview"

# The following commands execute the export using the variables above

pac solution export --path ${solutionDir}${solutionName}-${solutionVersion}.zip --name $solutionName --managed false
pac solution export --path ${solutionDir}${solutionName}-${solutionVersion}_managed.zip --name $solutionName --managed true
pac solution online-version --solution-name ${solutionName} --solution-version ${newSolutionVersion}

# IMPORT MANAGED SOLUTION
# Set these before running the script

$solutionDir = "C.\Solutions\"
$solutionVersion = "1.2.0.9"
$solutionName = "TechReview"

# The following commands execute the export using the variables above

pac solution import --path ${solutionDir}${solutionName}-${solutionVersion}_managed.zip

# UNPACK SOLUTIONS
# Set these before running script

$solutionDir = ".\Solutions\"
$solutionVersion = "1.0.0.1"
$solutionName = "TechReview"
$targetFolder = ".\Source\"

pac solution unpack --zipfile ${solutionDir}${solutionName}-${solutionVersion}.zip --folder ${targetFolder}