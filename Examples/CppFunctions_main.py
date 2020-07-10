# Jack C. Cook
# July 9, 2020

# Step 1: python setup_cppfunctions.py build_ext --inplace
# Step 2: python cppfunctions_main.py
# Step 3: output should be '[Hello world from C++]'

from CppFunctions.HelloWorld import helloworldfunction
from CppFunctions.PrimeNumbers import PrimeNumbers


def main():
    # --------- Hello World C++ Function Example -----------
    helloworldfunction.CallHelloWorldFunc()
    # --------- Prime Numbers C++ Functin Example ----------
    lst = []
    lst = PrimeNumbers._primes(lst, 10)
    print(lst)


if __name__ == '__main__':
    main()
