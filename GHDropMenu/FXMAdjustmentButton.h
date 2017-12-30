//
//  GHAdjustmentButton.h
//  Field
//
//  Created by 赵治玮 on 2017/11/9.
//  Copyright © 2017年 赵治玮. All rights reserved.
//

#import "FXMButton.h"

typedef enum : NSUInteger {
    
    /** 图片在右 */
    FXMAdjustmentButtonType_Left = 1,
    /** 图片在左 */
    FXMAdjustmentButtonType_Right,
    /** 图片在上 */
    FXMAdjustmentButtonType_Top,
    /** 图片在下 */
    FXMAdjustmentButtonType_Bottom,
    
} FXMAdjustmentButtonType;

@interface FXMAdjustmentButton : FXMButton
@property (nonatomic , assign)FXMAdjustmentButtonType type;
@end
