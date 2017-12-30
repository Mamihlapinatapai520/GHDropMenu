//
//  GHAdjustmentButton.m
//  GHome
//
//  Created by 赵治玮 on 2017/11/9.
//  Copyright © 2017年 赵治玮. All rights reserved.
//

#import "FXMAdjustmentButton.h"

@implementation FXMAdjustmentButton
- (void)setHighlighted:(BOOL)highlighted {
    
}
- (instancetype)initWithFrame:(CGRect)frame {
    if (self == [super initWithFrame:frame]) {
        self.imageView.contentMode = UIViewContentModeScaleAspectFit;
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];

    CGFloat margin = 15;
    CGSize size = [self sizeWithText:self.currentTitle font:[UIFont systemFontOfSize:14] maxSize:CGSizeMake(kScreenHeight - 2 * margin, self.height)];

    if (self.type == FXMAdjustmentButtonType_Left) {
        self.titleEdgeInsets = UIEdgeInsetsMake(0, self.width - margin - self.imageView.width - self.titleLabel.width - self.imageView.width , 0,0);
        self.titleLabel.x = (self.width - size.width) * 0.5 - 10;
        self.imageView.frame = CGRectMake(self.titleLabel.x + self.titleLabel.width + 5, self.titleLabel.frame.origin.y, 15, 15);
    } else if (self.type == FXMAdjustmentButtonType_Right) {
        self.titleLabel.frame = CGRectMake(self.width - size.width, 3, size.width, size.height);
        self.imageView.frame = CGRectMake(self.width - size.width - self.imageView.width , 3, self.imageView.width, self.imageView.height);
    } else if (self.type == FXMAdjustmentButtonType_Top) {
        self.imageView.frame = CGRectMake(self.width * 0.5, 0, self.imageView.width, self.height * 0.5);
        self.titleLabel.frame = CGRectMake(self.width * 0.5,self.height * 0.5, size.width, self.height * 0.5);
    } else if (self.type == FXMAdjustmentButtonType_Bottom) {
        self.titleLabel.frame = CGRectMake(self.width * 0.5,0, size.width, self.height * 0.5);
        self.imageView.frame = CGRectMake(self.width * 0.5, self.height * 0.5, self.imageView.width, self.height * 0.5);
    }
    
}

#pragma mark - 返回文字的size
- (CGSize)sizeWithText:(NSString *)text font:(UIFont *)font maxSize:(CGSize)maxSize {
    NSDictionary *attrs = @{NSFontAttributeName : font};
    return [text boundingRectWithSize:maxSize options:NSStringDrawingUsesLineFragmentOrigin attributes:attrs context:nil].size;
}

@end
