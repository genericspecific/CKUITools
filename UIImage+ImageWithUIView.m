//
//  UIImage+ImageWithUIView.m
//

#import "UIImage+ImageWithUIView.h"

@implementation UIImage (ImageWithUIView)

+ (UIImage *)imageWithUIView:(UIView *)view
{
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(CGRectGetWidth([view bounds]), CGRectGetHeight([view bounds])), NO, [[UIScreen mainScreen] scale]);
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
