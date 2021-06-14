#/bin/bash

echo "++++++++Bulk Load Command Generator++++++++"
echo " "
echo "The full .tar file name (including the extension .tar)"
read -p "Enter File Name: " fileName
echo " "
echo "Reports folders:"
echo " "
echo "PFP = PFP"
echo "Commitment Summary = CommitmentSummary"
echo "First Pass = FirstPass"
echo "OEA - Customer Group Summary = OEACustGrp"
echo "OEA Location = OEALocation"
echo "OEA Worksheet = OEAWorksheet"
echo " "
read -p "Enter Folder Destination: " pathDest
read -p "Is it for the new portal (y/n): " -n 1 isNew
echo " "

echo "=====================Commands==========================="
echo " "
if [[ -n $fileName ]]; then
  if [ "$isNew" = "y" ]; then
    echo "ssh f07540c@uxhazpa01p.casecorp.com"
    echo "xaxa0808"
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
echo " "
echo "=====================Additional Instructions==========================="
echo " "
echo "Please run the commands above one by one, and read the followowing indications"
echo "1. Make sure the file name is the same as in uxhazem1"
echo "2. Make sure the .tar file is copied in the proper directory"
echo "3. Make sure the .xml file is a valid xml"
echo "4. Make sure the the format in the .xml file is correct"
echo "5. Make sure the there is no white space at the beginning in the .xml file"
echo "6. Make sure the the categories are correct"
echo "7. Make sure the .pdf files match with the ones described in the .xml file "
echo "8. Once the bulk load ends, please look at the content in WCM"

