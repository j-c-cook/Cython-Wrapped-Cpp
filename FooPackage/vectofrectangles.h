//
// Created by Jack Cook on 2020-03-07.
//


#ifndef CYTHON_WRAPPED_CPP_VECTOFRECTANGLES_H
#define CYTHON_WRAPPED_CPP_VECTOFRECTANGLES_H

#include "RectanglePackage/rectangle.h"
#include <iostream>
#include <vector>

/**
 * This function accepts vectors of individual instances for the class you want a vector of
 * ps. I would have directly passed a list of vectors of Rectangle from Python, but didn't know how ...
 *   there may be some overhead going into cpp here, but maybe worth it if long calculation
 * @author Jack C. Cook
 * @param Xones See DoBigly for description of the const ref input vectors
 * @param Rectangles A reference of vector of class Rectangle to be modified
 */
void funcy(const std::vector<int>& Xones, const std::vector<int>& Yones,
           const std::vector<int>& Xtwos, const std::vector<int>& Ytwos, std::vector<shapes::Rectangle>& Rectangles);
/**
 * This function is for doing bigly things with the list of objects you can now have in cpp.
 * @author Jack C. Cook
 * @param Xones This is a vector of instances for filling the vector of objects in cpp
 * @param Yones "    "
 * @param Xtwos "    "
 * @param Ytwos "    "
 */
void DoBigly(const std::vector<int>& Xones, const std::vector<int>& Yones,
             const std::vector<int>& Xtwos, const std::vector<int>& Ytwos);

#endif //CYTHON_WRAPPED_CPP_VECTOFRECTANGLES_H
