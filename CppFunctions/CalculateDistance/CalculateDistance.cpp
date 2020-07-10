//
// Created by jackcook on 7/10/20.
//

#include "CalculateDistance.h"


double CalcDist(std::unordered_map<std::string, double>& um)
/*
 * CalcDist
 * Calculates the distance between points p1 and p2
 */
{
    double x1 = um["x1"];
    double y1 = um["y1"];
    double x2 = um["x2"];
    double y2 = um["y2"];

    double distance;
    double x_diff;
    double y_diff;

    x_diff = pow(x2 - x1, 2);
    y_diff = pow(y2 - y1, 2);

    distance = sqrt(x_diff + y_diff);

    return distance;
}