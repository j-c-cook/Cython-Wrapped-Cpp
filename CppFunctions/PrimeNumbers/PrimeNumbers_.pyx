# Jack C. Cook
# Saturday, March 7, 2020

# This is an example for passing a list of <int> in python to C++

from libcpp.vector cimport vector

cdef extern from "PrimeNumbers.h":
    void primes(vector[int] p, unsigned int nb_primes)


cdef vector[int] lst_to_vector(lst):
    # TODO: Speed this up by not pushing back but allocating
    """
    Convert a list to a vector 
    :param lst: a python list
    :return: a vector containing the same values as the python list
    """
    cdef vector[int] o_vect
    for value in lst:
        o_vect.push_back(value)
    return o_vect

cpdef vector_to_lst(vector[int] v):
    """
    Convert a vector to a list
    :param v: an c++ vector
    :return: a python list
    """
    lst = []
    for i in range(v.size()):
        lst.append(v[i])
    return lst

cpdef _primes(_p: list, nb_primes: int):
    """
    This function can be called from a python script and can then make use of the primes function in C++
    :param _p: this is an empty python list defined in the previous function
    :param nb_primes: this is the number of primes top limit, ie. np_primes = 10 -> [2, 3, 5, 7]
    :return: a list of the primes up to nb_primes
    """
    cdef vector[int] p
    p = lst_to_vector(_p)
    primes(p, nb_primes)
    lst = vector_to_lst(p)
    return lst
