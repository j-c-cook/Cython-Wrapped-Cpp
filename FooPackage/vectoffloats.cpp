//
// Created by Jack Cook on 2020-03-07.
//

#include "vectoffloats.h"
#include <iostream>

void vectofFloatsFunc(std::vector<float>& vectFloats)
{
    for (auto& value : vectFloats)
    {
        std::cout << value << std::endl;
    }
}