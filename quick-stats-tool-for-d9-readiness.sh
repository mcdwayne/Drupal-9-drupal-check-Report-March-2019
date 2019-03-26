#!/bin/bash

## Author: mcdwayne
## How to use this tool
## download or recreat it
## cmhod +x filename
## move it to the folder where you have all the report files downloaded
## ./nameofthisscript.sh

echo "report from the drupal-check D9 readiness"

echo 'total files present'
ls | wc -l

echo 'files containing "no error"' 
grep -li 'no error' *.txt | wc -l

echo 'files containing "not found"' 
grep -li 'not found' *.txt | wc -l

echo 'files containing "Fatal error"'
grep -li 'Fatal error' *.txt | wc -l 

echo 'files containing "does not exist"'
grep -li 'does not exist' *.txt | wc -l

echo 'files containing "not found and could not be autoloaded"' 
grep -li 'not found and could not be autoloaded' *.txt | wc -l

echo 'files containing "Usage of depricated trait"'
grep -li 'Usage of deprecated trait' *.txt | wc -l

echo 'files containing "of deprecated class"' 
grep -li 'of deprecated class' *.txt | wc -l

echo 'files containing "deprecated method"' 
grep -li 'deprecated method' *.txt | wc -l

echo 'files containing "assertIdentical"' 
grep -li 'assertIdentical' *.txt | wc -l

echo 'files containing "assertEqual"' 
grep -li 'assertEqual' *.txt | wc -l

echo 'files containing "assertNoText"' 
grep -li 'assertNoText' *.txt | wc -l

echo 'files containing "assertFieldByXPath"' 
grep -li 'assertFieldByXPath' *.txt | wc -l

echo 'files containing "entity_get_form_display"' 
grep -li 'entity_get_form_display' *.txt | wc -l

echo 'files containing "entity_get_display"'
grep -li 'entity_get_display' *.txt | wc -l

echo 'files containing "entity_view"' 
grep -li 'entity_view' *.txt | wc -l

echo 'files containing "drupal_set_message"' 
grep -li 'drupal_set_message' *.txt | wc -l

