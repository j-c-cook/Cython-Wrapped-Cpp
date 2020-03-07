from libcpp.vector cimport vector

# rectangle.pyx
cdef extern from "rectangle.h" namespace "shapes":
    cdef cppclass Rectangle:
        Rectangle(int, int, int, int)
        int x0, y0, x1, y1
        int getLength()
        int getHeight()
        int getArea()
        void move(int, int)

cdef class PyRectangle:
    cdef Rectangle *c_rect      # hold a C++ instance which we're wrapping
    def __cinit__(self, int x0, int y0, int x1, int y1):
        self.c_rect = new Rectangle(x0, y0, x1, y1)
    def __dealloc__(self):
        del self.c_rect
    def getLength(self):
        return self.c_rect.getLength()
    def getHeight(self):
        return self.c_rect.getHeight()
    def getArea(self):
        return self.c_rect.getArea()
    def move(self, dx, dy):
        self.c_rect.move(dx, dy)

    # Attribute access
    @property
    def x0(self):
        return self.c_rect.x0
    @x0.setter
    def x0(self, x0):
        self.c_rect.x0 = x0

    # Attribute access
    @property
    def x1(self):
        return self.c_rect.x1
    @x1.setter
    def x1(self, x1):
        self.c_rect.x1 = x1

    # Attribute access
    @property
    def y0(self):
        return self.c_rect.y0
    @y0.setter
    def y0(self, y0):
        self.c_rect.y0 = y0

    # Attribute access
    @property
    def y1(self):
        return self.c_rect.y1
    @y1.setter
    def y1(self, y1):
        self.c_rect.y1 = y1
