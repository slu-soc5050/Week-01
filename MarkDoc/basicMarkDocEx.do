// ==========================================================================

// Basic MarkDoc Example

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

global rootDir "Basic MarkDoc Example"
capture mkdir "$rootDir"
cd "$rootDir"

// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

// log process

log using basicMarkDocEx.txt, text replace

// ==========================================================================

/*
file name - basicMarkDocEx.do

project name - SOC5050 - Quantitative Analysis - Spring 2016

purpose - Illustrates Basic MarkDoc Commands

created - 22 Aug 2016

updated - 22 Aug 2016

author - CHRIS
*/

// ==========================================================================

/*
full description -
This do-file illustrates basic commands for MarkDoc, a user-written
package that allows you to create 'literate programming' documents that
weave together code for completing analyses with text written in Markdown
format.
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
none
*/

// ==========================================================================
// ==========================================================================
// ==========================================================================

quietly log using basicMarkDocEx.smcl, replace smcl name(markdoc)

/***
# MarkDoc Example
  - SOC 5050: Quantitative Analysis
  - Christopher Prener, PhD
  - 22 Aug 2016

### Supressing output

You can supress output by using `//OFF` and `//ON` commands.
***/

//OFF
sysuse auto, clear
//ON

/***
### Writing basic text

You can write basic text by wrapping it in the special MarkDoc comment syntax: `/***` and `***/`.

The `auto.dta` dataset contains the following variables:
***/

describe

/***
### Writing dynamic text in MarkDoc

Use the `txt` command to write dynamic text in **MarkDoc** as shown below:
***/

summarize price

txt "The mean of Price variable is " r(mean) " and SD is " %9.3f r(sd)    ///
    ". Note that you only need to put the string in double quotes, if you " ///
    "wish to display **Scalars** within the text. Instead, if you include " ///
    "local or global **Macros**, you can just type any text without "       ///
    "bothering with the double quotations."

quietly log close markdoc

markdoc basicMarkDocEx, replace export(md) install

// ==========================================================================
// ==========================================================================
// ==========================================================================

// standard closing options

log close _all
graph drop _all
set more on

// ==========================================================================

exit
