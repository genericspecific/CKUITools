//
//  CALayer+Image.m
//  NTFExplore
//
//  Created by Constantine Karlis on 13/06/12.
//

#import "CALayer+Image.h"

@implementation CALayer (Image)

+(CALayer*)layerWithImage:(UIImage*)image
{
    CALayer* l = [[CALayer alloc] init];
    [l setFrame:CGRectMake(0.0, 0.0, image.size.width, image.size.height)];
    l.contents = (id)image.CGImage;
    return l;
}

@end
