//
//  NSCBGradientView.h
//  testproject
//
//  Created by Michelle Ramirez on 3/4/13.
//  Copyright (c) 2013 Michelle Ramirez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface NSCBGradientView : UIView

@property (nonatomic, readonly) CAGradientLayer *gradientLayer;

// An Array of UIColors for the gradient
@property (nonatomic, readwrite) NSArray *colors;

// Specifies that the gradient should be drawn horizontally
@property (nonatomic, getter = isHorizontal) BOOL horizontal;

@end