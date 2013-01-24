//
//  UIScreen+CKAdditions.h
//
//  Created by Constantine Karlis on 11/5/12.
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
