# Jack C. Cook
# Saturday, March 7, 2020

# make the c++ function available to the script
cdef extern from "HelloWorldFunc.h":
    void HelloWorldFunction()


# a function that can be accessed by python
cpdef CallHelloWorldFunc():
    HelloWorldFunction()  # call the c++ function

