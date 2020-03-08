//
// Created by Jack Cook on 2020-03-07.
//

#include "vectofrectangles.h"

void funcy(const std::vector<int>& Xones, const std::vector<int>& Yones,
           const std::vector<int>& Xtwos, const std::vector<int>& Ytwos, std::vector<shapes::Rectangle>& Rectangles)
{
    for (size_t i = 0; i < Xones.size(); ++i)
    {
        Rectangles[i] = shapes::Rectangle(Xones[i], Yones[i], Xtwos[i], Ytwos[i]);
    }
}

void DoBigly(const std::vector<int>& Xones, const std::vector<int>& Yones,
             const std::vector<int>& Xtwos, const std::vector<int>& Ytwos)
{
    std::vector<shapes::Rectangle> VectOfRectangles(Xones.size());
    funcy(Xones, Yones, Xtwos, Ytwos, VectOfRectangles);
    // do stuff
    std::cout << "Now we have a vector of rectangles in cpp" << std::endl;
}
