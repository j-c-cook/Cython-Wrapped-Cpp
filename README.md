# Cython-Wrapped-Cpp
This is an example repository on how to wrap C++ functions and classes with Cython and then call them from Python

To run the example files you will need to run the setup files first.
```
python <setup.py> build_ext --inplace
```

## Simple
### Hello World Cython example
This is a very simple hello world Cython example.

Example - [simple_main.py](Examples/simple_main.py)

Setup File - [setup_simple.py](setup_Simple.py)

Associated files - [helloworld.pyx](Simple/helloworld.pyx)

## Cython Functions
### Prime Numbers function Example
This contains an example written in Cython, which makes use of a C++ built in type `vector`.

Example - [cythonfunctions_main.py](Examples/cythonfunctions_main.py)

Setup File - [setup_CppFunctions.py](setup_CppFunctions.py)

Associated files - [PrimeNumbers.pyx](CythonFunctions/PrimeNumbers.pyx)

## Cpp Functions
### Hello World
This example contains a C++ function wrapped by Cython and made available to be called in Python. The example prints "Hello World" from C++.

Example - [cppfunctions_main.py](Examples/cppfunctions_main.py)

Setup File - [setup_CppFunctions.py](setup_CppFunctions.py)

Associated Files - [HelloWorldFunc.cpp](CppFunctions/HelloWorld/HelloWorldFunc.cpp), &nbsp; [HelloWorldFunc.h](CppFunctions/HelloWorld/HelloWorldFunc.h), &nbsp; [HelloWorldFunction_.pyx](CppFunctions/HelloWorld/HelloWorldFunction_.pyx)
