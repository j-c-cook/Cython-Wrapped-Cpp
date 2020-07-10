# Jack C. Cook
# July 10, 2020

# Cython function file

from .CalculateDistance_ cimport CalcDist, string, unordered_map


cpdef dict_to_unorderedmap(unordered_map[string, double]& um, dictionary: dict):
    """
    This function takes a particular C++ unordered map by reference and a Python dictionary
    (passed by reference) and converts the dict to unordered map 
    :param um: A reference of C++ unordered map
    :param dictionary: a reference of a Python dict (Python always handles type dict as pass by reference 
    :return: NA
    """
    cdef string tmp_str
    for key in dictionary:
        tmp_str = str.encode(key)  # python type: str needs to be converted to bytes to be understood as C++ string
        um[tmp_str] = dictionary[key]


cpdef _CalcDist(dictionary: dict):
    """
    There essentially needs to be a "driver" function to access C++ code
    :param dictionary: The python dictionary
    :return: the distance calculated by the CalcDist C++ function
    """
    cdef unordered_map[string, double] um,
    um = dict_to_unorderedmap(um, dictionary)
    dist = CalcDist(um)
    return dist
