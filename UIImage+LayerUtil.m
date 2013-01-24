//
//  UIImage+LayerUtil.m
//  Effient
//
//  Created by Constantine Karlis on 28/10/2011.
//  Copyright (c) 2011 rehabstudio. All rights reserved.
//

#import "UIImage+LayerUtil.h"

@implementation UIImage (LayerUtil)

+(UIImage*)imageWithCALayer:(CALayer*)layer
{
    UIGraphicsBeginImageContext(layer.frame.size);

    [layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage* out = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return out;
}

@end
