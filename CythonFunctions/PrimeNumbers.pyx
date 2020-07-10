# Jack C. Cook
# July 9, 2020

# Source: https://cython.readthedocs.io/en/latest/src/tutorial/cython_tutorial.html

# Cython using C++ example function

# distutils: language=c++

from libcpp.vector cimport vector  # able to import c++ types

def primes(unsigned int nb_primes):  # def is accessable by python
    cdef int n, i
    cdef vector[int] p
    p.reserve(nb_primes)  # allocate memory for 'nb_primes' elements

    n = 2
    while p.size() < nb_primes:  # size() for vectors is similar to len()
        for i in p:
            if n % i == 0:
                break
        else:
            p.push_back(n)  # push_back is similar to append()
        n += 1

    # Vectors are automatically converted to Python
    # lists when converted to Python objects.
    return p
