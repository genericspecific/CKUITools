//
//  trig.c
//
//  Created by Constantine Karlis on 5/04/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#include <stdio.h>
#include <math.h>
#include "radialGeometry.h"

float degreesToRadians(float degrees)  
{
    return M_PI * degrees / 180;
}

float radiansToDegrees(float radians)
{
    return 180 / M_PI * radians;
}

radialPoint radialPointMake(float radius , float angle)
{
    radialPoint p;
    p.radius = radius;
    p.angle = angle;
    return p;
}

CGPoint polarToCartesian(radialPoint point)
{
    float x = point.radius * cosf(point.angle);
    float y = point.radius * sinf(point.angle);
    return CGPointMake(x, y);
}

radialPoint cartesianToPolar(CGPoint point)
{
    float radius = sqrtf(powf(point.x, 2.0) + powf(point.y , 2.0));
    float angle = atan2f(point.y , point.x);
    return radialPointMake(radius, angle);
}