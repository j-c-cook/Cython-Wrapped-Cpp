# Jack C. Cook
# Saturday, March 7, 2020

# This is an example for passing a list of floats in python to C++

from libcpp.vector cimport vector



cdef extern from "vectoffloats.h":
  void vectofFloatsFunc(vector[float] vectFloats)


cpdef pass_by_ref(lst):
  cdef int length
  cdef vector[float] vect
  for i in range(len(lst)):
    vect.push_back(lst[i])

  vectofFloatsFunc(vect)
