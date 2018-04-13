MODULE=cppfunc
PY_INC=/usr/include/python3.5m
.PHONY: all clean
all:
	swig3.0 -c++ -python $(MODULE).i
	g++ -std=c++11 -O2 -fPIC -c $(MODULE).cpp
	sed -i '16i #include "$(MODULE).h"' $(MODULE)_wrap.cxx
	g++ -std=c++11 -O2 -fPIC -c $(MODULE)_wrap.cxx -I$(PY_INC)
	g++ -std=c++11 -fPIC -shared $(MODULE).o $(MODULE)_wrap.o -o _$(MODULE).so
	python3 $(MODULE)_test.py

clean:
	rm *.cxx *.o *.so $(MODULE).py
	rm -fR __pycache__
