//
//  UIScreen+CKAdditions.m
//  NostalgiaTiFrega
//
//  Created by Constantine Karlis on 11/5/12.
//  Copyright (c) 2012 Constantine Karlis Interactive Media. All rights reserved.
//

#import "UIScreen+CKAdditions.h"

@implementation UIScreen (CKAdditions)

-(CGSize)sizeWithOrientation:(int)orientation
{
    CGRect r = [self applicationFrame];
    if (UIInterfaceOrientationIsLandscape(orientation))
    {
        return CGSizeMake(r.size.height, r.size.width);
    }
    else
    {
        return CGSizeMake(r.size.width , r.size.height);
    }
}

-(CGRect)rectWithOrientation:(int)orientation
{
    CGRect r = [self applicationFrame];
    if (UIInterfaceOrientationIsLandscape(orientation))
    {
        return CGRectMake(0, 0, r.size.height, r.size.width);
    }
    else
    {
        return CGRectMake(0, 0, r.size.width, r.size.height);
    }
}

-(CGSize)currentSize
{
    return [self sizeWithOrientation:[[UIApplication sharedApplication] statusBarOrientation]];
}

-(CGRect)currentRect
{
    CGSize s = [self currentSize];
    return CGRectMake(0, 0, s.width, s.height);
}

-(CGRect)landscapeRect
{
    return [self rectWithOrientation:UIInterfaceOrientationLandscapeRight];
}

-(CGRect)portraitRect
{
    return [self rectWithOrientation:UIInterfaceOrientationPortrait];
}

@end
