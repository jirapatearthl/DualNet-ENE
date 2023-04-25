#!/bin/bash

cwdFolder=$(pwd)
srcFolder="$(dirname "$cwdFolder")/src"
utilsFolder="$(dirname "$cwdFolder")/utils"

export utilsFolder


# Get the options
while getopts "i:o:h" option; do
   case $option in
      i) NameInput=$OPTARG;;
      o) NameOutput=$OPTARG;;
      h|-help)
      echo "options:"
      echo "-h                		show brief help"
      echo "-i=Input Folder Path        specify an action to use"
      echo "-o=Output FOlder Path       specify a directory to store output in"
      exit 0
         exit;;
     \?) # Invalid option
         echo "Error: Invalid option"
         exit;;
   esac
done


echo $PathToRaw
echo $PathToSave

export PathToRaw
export PathToSave

python ${srcFolder}/preprocessingroi_nrrd.py

