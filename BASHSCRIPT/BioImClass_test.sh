#!/bin/bash

cwdFolder=$(pwd)
srcFolder="$(dirname "$cwdFolder")/src"
utilsFolder="$(dirname "$cwdFolder")/utils"

export utilsFolder

while getopts "i:o:m:h" option; do
   case $option in
      i) NameInput=$OPTARG;;
      o) NameOutput=$OPTARG;;
      m) NameModel=$OPTARG;;
      h|-help)
      echo "options:"
      echo "-h					show brief help"
      echo "-i=Input Folder Path to Preprocessing	specify an action to use"
      echo "-o=Output Folder Path			specify a directory to store output"
      echo "-m=Input Folder to model (.h5)		specify location of the pretrain model"
      exit 0
         exit;;
     \?) # Invalid option
         echo "Error: Invalid option"
         exit;;
   esac
done



PathToModel=$NameModel
PathToData=$NameInput
PathToSave=$NameOutput

echo $PathToModel
echo $PathToSave
echo $PathToData

export PathToModel
export PathToSave
export PathToData

python ${srcFolder}/test_ene.py

echo "$src"
