//
//  UIImage+LayerUtil.h
//  Effient
//
//  Created by Constantine Karlis on 28/10/2011.
//

#import <UIKit/UIKit.h>
#import "QuartzCore/QuartzCore.h"

@interface UIImage (LayerUtil)

+(UIImage*)imageWithCALayer:(CALayer*)layer;

@end
