# Jack C. Cook
# July 9, 2020

# Step 1: python setup_CythonFunctions.py build_ext --inplace
# Step 2: python cythonfunctions_main.py
# Step 3: output should be '[2, 3, 5, 7, 11, 13, 17, 19, 23, 29]'

from CythonFunctions import PrimeNumbers

prime_ns = PrimeNumbers.primes(10)
print(prime_ns)
