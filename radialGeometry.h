//
//  trig.h
//
//  Created by Constantine Karlis on 29/03/12.
//

typedef struct {
    float radius;
    float angle;
} radialPoint;

float degreesToRadians(float degrees);
float radiansToDegrees(float radians);
radialPoint radialPointMake(float radius , float angle);
CGPoint polarToCartesian(radialPoint point);
radialPoint cartesianToPolar(CGPoint point);
