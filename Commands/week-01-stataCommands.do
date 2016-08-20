// ==========================================================================

// Week 01 Commands Example

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
  cd "/Users/`c(username)'/Documents/Working"
}
else if "`c(os)'" == "Windows" {
  cd "E:\Users\`c(username)'\Documents\Working"
}

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// check to see if appropriate directories exists

global rootDir "Week-01-Examples"
capture mkdir $rootDir
cd $rootDir

capture mkdir "Plots"

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// log process

log using week-01-stataCommands.txt, text replace

// ==========================================================================

/*
file name - week-01-stataCommands.do

project name - SOC5050 - Quantitative Analysis - Spring 2016

purpose - Illustrate Week 01's commands

created - 22 Aug 2016

updated - 22 Aug 2016

author - CHRIS
*/

// ==========================================================================

/*
full description -
This do-file illustrates most of the commands for Week 01. The help
commands, which are designed to be interactive, are not included in this
illustration.
*/

/*
updates -
none
*/

// ==========================================================================
/*
superordinates  -
- auto.dta (pre-installed with Stata)
*/

/*
subordinates -
- none
*/

// ==========================================================================
// ==========================================================================
// ==========================================================================

// 1. Opening Pre-Installed Datasets

sysuse auto.dta

/* Note that, compared to the template included in the file
stata-snippets.cson and detailed in the course User's Guide, the commands
for ensuring that the required data are present and copying them to
the appropriate directory are not included in this do-file. This is
because we are using pre-installed data, which makes these commands
less important at this stage. */

// ==========================================================================

// 2. List variables in dataset

// 2a. List all variables

describe

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// 2b. List select variables

describe make price mpg

// ==========================================================================

// 3. List variable descriptive statistics

// 3a. List all variables

summarize

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// 3b. List select variables

summarize make price mpg

// ==========================================================================

// 4. Create frequency table

// 4a. Tabulate without labels

tabulate foreign

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// 4b. Tabulate without value labels

tabulate foreign, nolabel

// ==========================================================================

// 5. Create histogram

histogram mpg, frequency /// 
  title(Miles Per Gallon for 1979 Cars) /// 
  note("Produced by Christopher Prener, PhD; Data via Stata")

// ==========================================================================
// ==========================================================================
// ==========================================================================

// standard closing options

log close _all
// graph drop _all // (omitted so that graph remaims visible)
set more on

// ==========================================================================

exit
