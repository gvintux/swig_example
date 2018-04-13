%module cppfunc

%include "std_string.i"
%include "std_map.i"

namespace std {
    %template(StringDoubleMap) map<string, double>;
}
%{
#define SWIG_FILE_WITH_INIT
#include <map>
%}

extern double cppfunc(std::map<std::string, double> args);
