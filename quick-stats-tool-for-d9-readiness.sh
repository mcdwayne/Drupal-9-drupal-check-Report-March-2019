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


echo 'files containing "assertEqual"' 
grep -li 'assertEqual' *.txt | wc -l
grep -li 'assertEqual' *.txt >> ../FilesContainingKeywordReports/assertEqualList.txt


echo 'files containing "assertFieldByXPath"' 
grep -li 'assertFieldByXPath' *.txt | wc -l
grep -li 'assertFieldByXPath' *.txt >> ../FilesContainingKeywordReports/assertFieldByXPath.txt


echo 'files containing "assertIdentical"' 
grep -li 'assertIdentical' *.txt | wc -l
grep -li 'assertIdentical' *.txt >> ../FilesContainingKeywordReports/assertIdenticalList.txt


echo 'files containing "assertNoText"' 
grep -li 'assertNoText' *.txt | wc -l
grep -li 'assertNoText' *.txt >> ../FilesContainingKeywordReports/assertEqualList.txt


echo 'files containing "deprecated method"' 
grep -li 'deprecated method' *.txt | wc -l
grep -li 'deprecated method' *.txt >> ../FilesContainingKeywordReports/DeprecatedMethodList.txt


echo 'files containing "does not exist"'
grep -li 'does not exist' *.txt | wc -l
grep -li 'does not exist' *.txt >> ../FilesContainingKeywordReports/DoesNotExistsList.txt


echo 'files containing "deprecated"' 
grep -li 'deprecated' *.txt | wc -l
grep -li 'deprecated' *.txt >> ../FilesContainingKeywordReports/containsDeprecatedList.txt

echo 'files containing "drupal_set_message"' 
grep -li 'drupal_set_message' *.txt | wc -l
grep -li 'drupal_set_message' *.txt >> ../FilesContainingKeywordReports/drupal_set_messageList.txt



echo 'files containing "entity_get_display"'
grep -li 'entity_get_display' *.txt | wc -l
grep -li 'entity_get_display' *.txt >> ../FilesContainingKeywordReports/EntityGetDisplayList.txt


echo 'files containing "entity_get_form_display"' 
grep -li 'entity_get_form_display' *.txt | wc -l
grep -li 'entity_get_form_display' *.txt >> ../FilesContainingKeywordReports/entity_get_form_displayList.txt


echo 'files containing "entity_view"' 
grep -li 'entity_view' *.txt | wc -l
grep -li 'entity_view' *.txt >> ../FilesContainingKeywordReports/entity_viewList.txt


echo 'files containing "Fatal error"'
grep -li 'Fatal error' *.txt | wc -l 
grep -li 'Fatal error' *.txt >> ../FilesContainingKeywordReports/FatalErrorList.txt 


echo 'files containing "no error"' 
grep -li 'no error' *.txt | wc -l
grep -li 'no error' *.txt >> ../FilesContainingKeywordReports/NoErrorList.txt


echo 'files containing "not found"' 
grep -li 'not found' *.txt | wc -l
grep -li 'not found' *.txt >> ../FilesContainingKeywordReports/NotFoundList.txt


echo 'files containing "not found and could not be autoloaded"' 
grep -li 'not found and could not be autoloaded' *.txt | wc -l
grep -li 'not found and could not be autoloaded' *.txt >> ../FilesContainingKeywordReports/NotFoundAndCouldNotBeAutoloaded.txt

echo 'files containing "of deprecated class"' 
grep -li 'of deprecated class' *.txt | wc -l
grep -li 'of deprecated class' *.txt >> ../FilesContainingKeywordReports/OfDeprecatedClassList.txt


echo 'files containing "Usage of depricated trait"'
grep -li 'Usage of deprecated trait' *.txt | wc -l
grep -li 'Usage of deprecated trait' *.txt >> ../FilesContainingKeywordReports/UsageOfDeprecatedTraitList.txt







