MarkDoc Example
===============

-   SOC 5050: Quantitative Analysis
-   Christopher Prener, PhD
-   22 Aug 2016

### Supressing output

You can supress output by using `//OFF` and `//ON` commands.

### Writing basic text

You can write basic text by wrapping it in the special MarkDoc comment
syntax: `/***` and `***/`.

The `auto.dta` dataset contains the following variables:

          .  describe
          
          Contains data from /Applications/Stata/ado/base/a/auto.dta
            obs:            74                          1978 Automobile Data
           vars:            12                          13 Apr 2014 17:45
           size:         3,182                          (_dta has notes)
          ------------------------------------------------------------------------------------------
                        storage   display    value
          variable name   type    format     label      variable label
          ------------------------------------------------------------------------------------------
          make            str18   %-18s                 Make and Model
          price           int     %8.0gc                Price
          mpg             int     %8.0g                 Mileage (mpg)
          rep78           int     %8.0g                 Repair Record 1978
          headroom        float   %6.1f                 Headroom (in.)
          trunk           int     %8.0g                 Trunk space (cu. ft.)
          weight          int     %8.0gc                Weight (lbs.)
          length          int     %8.0g                 Length (in.)
          turn            int     %8.0g                 Turn Circle (ft.)
          displacement    int     %8.0g                 Displacement (cu. in.)
          gear_ratio      float   %6.2f                 Gear Ratio
          foreign         byte    %8.0g      origin     Car type
          ------------------------------------------------------------------------------------------
          Sorted by: foreign
          
          

### Writing dynamic text in MarkDoc

Use the `txt` command to write dynamic text in **MarkDoc** as shown
below:

          .  summarize price
          
              Variable |        Obs        Mean    Std. Dev.       Min        Max
          -------------+---------------------------------------------------------
                 price |         74    6165.257    2949.496       3291      15906
          
          

The mean of Price variable is 6165.26 and SD is 2949.496. Note that you
only need to put the string in double quotes, if you wish to display
**Scalars** within the text. Instea d, if you include local or global
**Macros**, you can just type any text without botheri ng with the
double quotations. . quietly log close markdoc
