//
//  UIImage+LayerUtil.m
//  Effient
//
//  Created by Constantine Karlis on 28/10/2011.
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
