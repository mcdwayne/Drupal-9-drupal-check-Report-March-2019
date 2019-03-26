#!/bin/bash

## Author: mcdwayne
## Created to support this project doc:
## https://docs.google.com/document/d/1UnVzmQhCv9_IT0-u-tjvWPDR-QQAU31ij2iKkio8U3U/edit#
## 

## First, you gotta download the CSV of all the modules here
## https://docs.google.com/spreadsheets/d/1-W0k4vhdmw7ugzRdSa9orEc43_D5l6PPvUcrB8bw_-0/edit
## make sure it is named: modulelistmachinenames.csv
## ## NOTE: was generted from this: https://www.drupal.org/project/project_module/index?project-status=full&drupal_core=7234
## TAKE NOTE OF WHERE TO START! There is a PROGRESS tab as well, check it out.  
##
## move the file into your project folder per the project doc above
##
## then you run this: 
## Takes me about 2 ro 2.5 minutes per file generated.  

## Let's parce the csv
INPUT=modulelistmachinenames.csv

##Safe way to deal with Internal File Seperator or IFS resets
OLDIFS=$IFS
IFS=,

## Error if fine not found
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }

## Loop through the CSV
while read col1 col2
do
## threw errors if I didn't store this one as a variable, not sure why.  
## Store the machine name as a variable
MODULENAME=$col1

## Print to screen just for keeping an eye on progress reasons. 
echo $MODULENAME

# Install the module with composer
composer require ${col2}

# use the awesome drupal-check tool, store output as a variable dcount
dcout=$(drupal-check web/modules/contrib/${MODULENAME})

# grep the hash and store it in the variable hashout
hashout=$(composer show -i drupal/${MODULENAME} | grep source)

## this IFS let's us keep all our \n characters for formatting reasons.  
old_IFS2=$IFS
IFS=


# construct the thing we are going to paste into the template 
## print it to the file named after the modulename
echo -e "drupal-check results on commit hash: \n" $hashout '\n \n' "<code>" $dcout "\n\n </code>" >> reportsfolder/${MODULENAME}.txt

# reset ISF to whatever it was before for safety reasons
IFS=${old_IFS2}

## Extra cleanup step, prevents dependency hang caused by unavailable or require once things
## Does clean it up but does slow this down.
composer remove ${col2}


## Done with the loop
done < $INPUT

## reset to the original IFS
IFS=$OLDIFS


