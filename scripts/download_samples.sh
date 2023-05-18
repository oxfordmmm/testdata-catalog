#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    exit
fi

#
. $PWD/local.config
#

#Read the argument values based on the options
while [[ "$#" -gt 0 ]]
  do
    case $1 in
      -f|--filenames) filenames="$2"; shift;;
      -i|--samples-ids) ids="$2"; shift;;
    esac
    shift
done


if [ -n "$filenames" ]
  then

    #Download by filename
    while IFS= read -r filename
    do
      echo "Downloading $filename"
      oci os object get --namespace $namespace --bucket-name $bucket_name --file $filename --name $filename
    done < "$filenames"
fi

if [ -n "$ids" ]
  then

    #Download all samples related to an ID
    while IFS= read -r id
    do
      echo "Downloading all samples related to $id"
      oci os object bulk-download -bn $bucket_name --prefix $id --download-dir . --dry-run
    done < "$ids"

fi

