# AUTH SNIPPETS
pac auth create --kind DATAVERSE --url https://hlstechreviewdev.crm.dynamics.com/ --name TLCRevewBoardDev
pac auth create --kind DATAVERSE --url https://hlstechreview.crm.dynamics.com/ --name TLCRevewBoardProd

pac auth list
pac auth who
pac auth select --index 2

# Environment variable values for saving
# MOCK channel ID: 19:9b3390f9b3ff4eb0821164774eeaae35@thread.tacv2
# general channel ID: 19:VZvuSWaqpI8YfBoCJ9wg5dMDhdIHaybmn6BgS7dzaZ41@thread.tacv2


# EXPORT SOLUTIONS
# Set these before running the script

$solutionDir = ".\Solutions\"
$solutionVersion = "1.1.0.10"
$newSolutionVersion = "1.1.0.11"
$solutionName = "TechReview"

# The following commands execute the export using the variables above

pac solution export --path ${solutionDir}${solutionName}-${solutionVersion}.zip --name $solutionName --managed false
pac solution export --path ${solutionDir}${solutionName}-${solutionVersion}_managed.zip --name $solutionName --managed true
pac solution online-version --solution-name ${solutionName} --solution-version ${newSolutionVersion}

# Generate Settings File for environment variables
pac solution create-settings -z ${solutionDir}${solutionName}-${solutionVersion}.zip -s ${solutionDir}EnvSettings.json

# IMPORT MANAGED SOLUTION
# Set these before running the script

$solutionDir = ".\Solutions\"
$solutionVersion = "1.1.0.10"
$solutionName = "TechReview"
$settingsName = "EnvSettings.json"

# The following commands execute the export using the variables above

# pac solution import --path ${solutionDir}${solutionName}-${solutionVersion}_managed.zip
# OR import with settings file
pac solution import --path ${solutionDir}${solutionName}-${solutionVersion}_managed.zip --settings-file ${solutionDir}${settingsName}

# UNPACK SOLUTIONS
# Set these before running script

$solutionDir = ".\Solutions\"
$solutionVersion = "1.1.0.10"
$solutionName = "TechReview"
$targetFolder = ".\Source\"

pac solution unpack --zipfile ${solutionDir}${solutionName}-${solutionVersion}.zip --folder ${targetFolder}