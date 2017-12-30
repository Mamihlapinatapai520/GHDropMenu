//
//  FXMButton.m
//  GHome
//
//  Created by GHome on 2017/12/18.
//  Copyright © 2017年 GHome. All rights reserved.
//

#import "FXMButton.h"

@implementation FXMButton

- (void)setHighlighted:(BOOL)highlighted {
    
}
- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent*)event {
    CGRect bounds = self.bounds;
    CGFloat widthDelta = MAX(44.0 - bounds.size.width, 0);
    CGFloat heightDelta = MAX(44.0 - bounds.size.height, 0);
    bounds = CGRectInset(bounds, -0.5 * widthDelta, -0.5 * heightDelta);
    return CGRectContainsPoint(bounds, point);
}
@end
