// ==========================================================================

// Lab 01

// ==========================================================================

// standard opening options

version 14
log close _all
graph drop _all
clear all
set more off
set linesize 80

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// change directory

if "`c(os)'" == "MacOSX" {
  cd "/Users/`c(username)'/Desktop"
}
else if "`c(os)'" == "Windows" {
  cd "E:\Users\`c(username)'\Desktop"
}

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// check to see if appropriate directories exists

global rootDir "Lab-01-Modified"
capture mkdir $rootDir
cd $rootDir

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// log process

log using lab-01.txt, text replace

// ==========================================================================

/*
file name - /*what is this do-file's name?*/.do

project name - /*what project is this for?*/

purpose - /*what does this do-file do?*/

created - /*what is today's date?*/

updated - /*what is today's date?*/

author - CHRIS
*/

// ==========================================================================

/*
full description -
/*enter a description of what this do-file does*/
*/

/*
updates -

*/

// ==========================================================================
/*
superordinates  -
- /*list data file and any other files needed at runtime*/
*/

/*
subordinates -
- /*list any subfiles this do-file calls*/
*/

// ==========================================================================
// ==========================================================================
// ==========================================================================

/*begin writing commands here*/



// ==========================================================================
// ==========================================================================
// ==========================================================================

// standard closing options

log close _all
graph drop _all
set more on

// ==========================================================================

exit
