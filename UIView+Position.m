//
//  UIView+Position.m
//
//  Created by Constantine Karlis on 7/28/12.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
// 
// The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


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

-(void)centerInRect:(CGRect)rect
{
    self.center = CGPointMake(rect.origin.x + rect.size.width/2.0f , rect.origin.y + rect.size.height/2.0f);
}

- (void)centerVerticallyInRect:(CGRect)rect
{
    self.y = rect.origin.y + (rect.size.height - self.frame.size.height)/2.0f;
}

- (void)centerHorizontallyInRect:(CGRect)rect
{
    self.x = rect.origin.x + (rect.size.width - self.frame.size.width)/2.0f;
}

- (void)centerInSuperView
{
    self.center = self.superView.center;
}

- (void)centerVerticallyInSuperView
{
    [self centerVerticallyInRect:self.superView.frame]:
}

- (void)centerHorizontallyInSuperView
{
    [self centerHorizontallyInRect:self.superView.frame]:
}

- (void)centerHorizontallyBelow:(UIView *)view padding:(CGFloat)padding
{
    self.y = CGRectGetMaxY(view.frame) + padding;
    self.x = view.x + (view.frame.size.width - self.frame.size.width)/2.0f;
}

- (void)centerHorizontallyBelow:(UIView *)view
{
    [self centerHorizontallyBelow:view padding:0.0f];
}

@end
