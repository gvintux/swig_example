#include <map>
double cppfunc(std::map<std::string, double> &a)
{
    return a["E"] * a["g"];
}
