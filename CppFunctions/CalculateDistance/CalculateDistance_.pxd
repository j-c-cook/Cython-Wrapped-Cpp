# Jack C. Cook
# July 10, 2020

# Cython header file

#distutils: language = c++
from libcpp.unordered_map cimport unordered_map
from libcpp.string cimport string

# get access to the CalcDist function from CalculateDistance.cpp
cdef extern from "CalculateDistance.h":
    double CalcDist(unordered_map[string, double]& um)
