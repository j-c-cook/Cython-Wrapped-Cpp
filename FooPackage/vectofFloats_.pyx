from libcpp.vector cimport vector



cdef extern from "vectoffloats.h":
  void vectofFloatsFunc(vector[float] vectFloats)


cpdef pass_by_ref(lst):
  cdef int length
  length = len(lst)
  cdef vector[float] vect
  for i in range(len(lst)):
    vect.push_back(lst[i])

  vectofFloatsFunc(vect)
