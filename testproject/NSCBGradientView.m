//
//  NSCBGradientView.m
//  testproject
//
//  Created by Michelle Ramirez on 3/4/13.
//  Copyright (c) 2013 Michelle Ramirez. All rights reserved.
//

#import "NSCBGradientView.h"

#define HORIZONTAL_START_POINT  CGPointMake(0, 0.5)
#define HORIZONTAL_END_POINT    CGPointMake(1, 0.5)
#define VERTICAL_START_POINT    CGPointMake(0.5, 0)
#define VERTICAL_END_POINT      CGPointMake(0.5, 1)

@interface NSCBGradientView ()

@end

@implementation NSCBGradientView

#pragma mark - UIView

+ (Class)layerClass
{
    return [CAGradientLayer class];
}

#pragma mark - Accessors

- (CAGradientLayer *)gradientLayer
{
    return (CAGradientLayer *)self.layer;
}

- (void)setColors:(NSArray *)colors
{
    NSMutableArray *cgColors = [NSMutableArray arrayWithCapacity:colors.count];
    for (UIColor *color in colors)
    {
        [cgColors addObject:(id)[color CGColor]];
    }
    
    self.gradientLayer.colors = cgColors;
}

- (NSArray *)colors
{
    NSMutableArray *uiColors = [NSMutableArray arrayWithCapacity:self.gradientLayer.colors.count];
    for (id color in self.gradientLayer.colors)
    {
        [uiColors addObject:[UIColor colorWithCGColor:(CGColorRef)color]];
    }
    
    return uiColors;
}

- (void)setHorizontal:(BOOL)horizontal
{
    self.gradientLayer.startPoint = horizontal ? HORIZONTAL_START_POINT : VERTICAL_START_POINT;
    self.gradientLayer.endPoint   = horizontal ? HORIZONTAL_END_POINT : VERTICAL_END_POINT;
}

- (BOOL)isHorizontal
{
    return (CGPointEqualToPoint(self.gradientLayer.startPoint, HORIZONTAL_START_POINT)) && (CGPointEqualToPoint(self.gradientLayer.endPoint, HORIZONTAL_END_POINT));
}

@end