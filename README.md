# Using SWIG for calling C++ modules in python

## Requirements

* swig
* python dev packages
* make utility
* c++ compiler

## Building

* run `make` from source dir

## Cleaning

* run `make clean` from source dir


## Notes

* swig forgets to include header in wrapper (solved через sed -i '16i #include "$(MODULE).h"' $(MODULE)_wrap.cxx)
* Passing map<string, double> made from substitute object StringDoubleMap(look at %template(StringDoubleMap) map<string, double>);
