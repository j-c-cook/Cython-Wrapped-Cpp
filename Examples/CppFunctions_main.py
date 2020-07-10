# Jack C. Cook
# July 9, 2020

# Step 1: python setup_cppfunctions.py build_ext --inplace
# Step 2: python cppfunctions_main.py
# Step 3: output should be '[Hello world from C++]'

from CppFunctions.HelloWorld import helloworldfunction
from CppFunctions.PrimeNumbers import PrimeNumbers
from CppFunctions.CalculateDistance import CalculateDistance


def main():
    # --------- Hello World C++ Function Example -----------
    helloworldfunction.CallHelloWorldFunc()
    # --------- Prime Numbers C++ Functin Example ----------
    lst = []
    lst = PrimeNumbers._primes(lst, 10)
    print(lst)
    # -------- Calculating Distance using unordered map -----
    dnary = {}
    dnary["x1"] = 3
    dnary["y1"] = 3
    dnary["x2"] = 10
    dnary["y2"] = 10
    dist = CalculateDistance._CalcDist(dnary)
    print(dist)


if __name__ == '__main__':
    main()
