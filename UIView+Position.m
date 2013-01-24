//
//  UIView+Position.m
//
//  Created by Constantine Karlis on 7/28/12.
//

#import "UIView+Position.h"

@implementation UIView (Position)

-(void)setPosition:(CGPoint)position
{
    self.x = position.x;
    self.y = position.y;
}

-(CGPoint)position
{
    return self.frame.origin;
}

-(void)setX:(float)value
{
    [self setFrame:CGRectMake(value, self.y, self.frame.size.width, self.frame.size.height)];
}

-(float)x
{
    return self.frame.origin.x;
}

-(void)setY:(float)value
{
    [self setFrame:CGRectMake(self.x, value, self.frame.size.width, self.frame.size.height)];
}

-(float)y
{
    return self.frame.origin.y;
}

-(void)setRight:(float)value
{
    [self setFrame:CGRectMake(value - self.frame.size.width, self.y, self.frame.size.width, self.frame.size.height)];
}

-(float)right
{
    return self.x + self.frame.size.width;
}

-(void)setBottom:(float)value
{
    [self setFrame:CGRectMake(self.x, value - self.frame.size.height, self.frame.size.width, self.frame.size.height)];
}

-(float)bottom
{
    return self.x + self.frame.size.height;
}

@end
