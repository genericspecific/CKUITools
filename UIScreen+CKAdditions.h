//
//  UIScreen+CKAdditions.h
//  NostalgiaTiFrega
//
//  Created by Constantine Karlis on 11/5/12.
//  Copyright (c) 2012 Constantine Karlis Interactive Media. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScreen (CKAdditions)

-(CGSize)sizeWithOrientation:(int)orientation;
-(CGRect)rectWithOrientation:(int)orientation;
-(CGSize)currentSize;
-(CGRect)currentRect;
-(CGRect)landscapeRect;
-(CGRect)portraitRect;

@end
