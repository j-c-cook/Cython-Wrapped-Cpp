//
// Created by jackcook on 7/9/20.
//

#include "PrimeNumbers.h"

void primes(std::vector<int>& p, const unsigned int nb_primes) {

    for (int i=2; i<nb_primes; i++)
    {
        bool prime=true;
        for (int j=2; j*j<=i; j++)
        {
            if (i % j == 0)
            {
                prime=false;
                break;
            }
        }
        if(prime) p.push_back(i);
    }
}
