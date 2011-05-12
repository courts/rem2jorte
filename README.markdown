rem2jorte
=========

Author:      Patrick Hof <courts@offensivethinking.org>  
License:     [CC0 1.0 Universal License](http://creativecommons.org/publicdomain/zero/1.0/legalcode)

Download:    git clone git@github.com:courts/rem2jorte.git  

A simple script converting the output of 'remind -s' to Jorte's CSV format for
easy import. Jorte is a replacement for the default Android calendar. It reads
all its input from STDIN and writes to STDOUT. For Jorte to recognize the
data, it should be saved as 'schedule\_data.csv' or 'schedule\_add\_data.csv',
depending on how you want to import (overwriting vs. adding data).


rem2jorte Command Line Usage
----------------------------

Usage: rem2jorte [options] < $STDIN

    -t, --tag Tag                    Add a tag TAG to either the 'content' field
                                     of a Jorte entry or as a TAG to a remind
                                     entry when in reverse mode
    -r, --reverse                    Convert from Jorte to Remind
    -h, --help                       Show this help


Where $STDIN is the output of 'remind -s' or the content of an exported Jorte
CSV file in reverse mode.


Examples
--------

    remind -s12 ~/.reminders 01 Jan 2011 | rem2jorte

    rem2jorte -r < schedule_data.csv


Dependencies
------------

rem2jorte depends on my own [https://github.com/courts/remparser](remparser)
library.


RubyGems
--------

A gemspec file is included, so you can build and install remparser as a gem with:

    gem build rem2jorte.gemspec
    gem install rem2jorte-x.x.x.gem
