//
// Created by Jack Cook on 2020-03-07.
//

#include "vectofrectangles.h"

std::vector<float> func(std::vector<shapes::Rectangle> vectOfRect)
{
    std::vector<float> AreaVect(vectOfRect.size());
    for (size_t i = 0; i < vectOfRect.size(); ++i)
    {
        AreaVect[i] = vectOfRect[i].getArea();
    }
    return AreaVect;
}
