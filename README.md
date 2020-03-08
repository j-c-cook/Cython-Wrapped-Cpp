# Cython-Wrapped-Cpp
This is an example repository on how to wrap C++ functions and classes with Cython and call it from Python.

The objective of this project was to make a C++ object available in Python for use,
then to pass a list of that object into a C++ function for processing. It is done, but
has some in getting the list of objects converted to a vector of objects in C++.
There is room for improvement. 

## Getting Started ##
These instructions will get a copy of the project up and running on your machine for development and testing purposes.

### Prerequisites ###
`Python 3.x.x`

### Installing ###
`Clone` or `Fetch` this repository.

#### Requirements text file ####
Change into the project directory.
```
cd path/to/Cython-Wrapped-Cpp
```
Install the requirements.
```
pip install -r requirements.txt
```
#### Running Setup.py ####
```
python setup.py build_ext --inplace
```

## References ##
- <a href="http://docs.cython.org/en/latest/src/userguide/wrapping_CPlusPlus.html">Cython Documentation</a>
- <a href="https://gist.github.com/thorsummoner/e0b62f4e4b2d90292fc5b7493be93a25">thorsummoner and aferust</a> - Minimal example calling a C++ class from Python
- <a href="https://github.com/AshleySetter/HowToPackageCythonAndCppFuncs">Ashley Setter</a> - Packaging Python with Cython
