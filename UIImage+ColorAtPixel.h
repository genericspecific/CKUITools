//
//  UIImage+ColorAtPixel.h
//  CurateTest2
//
//  Created by Constantine Karlis on 29/12/2011.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UIImage (ColorAtPixel)

- (UIColor *)colorAtPixel:(CGPoint)point;

@end
