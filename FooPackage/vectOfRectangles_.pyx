# Jack C. Cook
# Saturday, March 7, 2020

# This is a hackish way to get a list of objects into a Cpp vector of objects
# There may be a shorter way with much less overhead, but here is the
# current solution.

from libcpp.vector cimport vector
# from rectangle_ cimport Rectangle
# from rectangle_ import PyRectangle


cdef extern from "vectofrectangles.h":
  void DoBigly(vector[int]& Xones, vector[int]& Yones,
      vector[int]& Xtwos, vector[int]& Ytwos)


cpdef pass_by_ref(lstOfPyRectangles):
  cdef vector[int] xones = range(len(lstOfPyRectangles))
  cdef vector[int] yones = range(len(lstOfPyRectangles))
  cdef vector[int] xtwos = range(len(lstOfPyRectangles))
  cdef vector[int] ytwos = range(len(lstOfPyRectangles))

  for i in range(len(lstOfPyRectangles)):
    xones[i] = lstOfPyRectangles[i].x0
    yones[i] = lstOfPyRectangles[i].y0
    xtwos[i] = lstOfPyRectangles[i].x1
    ytwos[i] = lstOfPyRectangles[i].y1

  DoBigly(xones, yones, xtwos, ytwos)
