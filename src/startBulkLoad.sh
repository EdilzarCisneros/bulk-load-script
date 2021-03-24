#/bin/bash

read -p "Enter File Name: " fileName
read -p "Enter Folder Destination: " pathDest
read -p "Is it for the new portal (y/n): " -n 1 isNew
echo "\n\n"

echo "================================================"
if [[ -n $fileName ]]; then
  if [ "$isNew" = "y" ]; then
    echo "ssh f07540c@uxhazpa01p.casecorp.com"
    echo "sama0303"
    basePathDest=/appl/WebSphere/cnhi/bulkLoads
    scriptDir=/appl/WebSphere/cnhi/bulkLoads
    scriptName=./bulkLoad.sh
  else
    echo "ssh f77544a@uxhazepwa.casecorp.com"
    echo "+Cqr3AygTV3Ry}"
    basePathDest=/dlp61/wci
    scriptDir=/net/appltest/dz/sb/dpsync/scripts
    scriptName=pdzBulkLoadtoWCM
  fi
  echo "scp f77544a@uxhazem1.casecorp.com:/lopt/connect_direct/connectt/$fileName $basePathDest/$pathDest/"
  echo "+Cqr3AygTV3Ry}"
  echo "cd $basePathDest/$pathDest/"
  echo "tar -xvf $fileName && rm $fileName"
  echo "cd $scriptDir"
  echo "$scriptName"
fi
echo "================================================"