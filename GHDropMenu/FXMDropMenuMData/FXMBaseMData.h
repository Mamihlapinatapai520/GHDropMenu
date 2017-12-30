//
//  FXMBaseMData.h
//  FXMOnLineAPP
//
//  Created by GHome on 2017/12/18.
//  Copyright © 2017年 GHome. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface FXMBaseMData : NSObject
#pragma mark - 界面相关
@property (nonatomic , copy) NSString *placeholder;
/** 标题 */
@property (nonatomic , copy) NSString *title;
/** 详情 */
@property (nonatomic , copy) NSString *details;
/** 记录indexPath */
@property (nonatomic , strong) NSIndexPath *indexPath;
/** cell高度 */
@property (nonatomic , assign) CGFloat cellHeight;
/** sectionHeader标题 */
@property (nonatomic , copy) NSString *sectionHeaderTitle;
/** sectionFooter标题 */
@property (nonatomic , copy) NSString *sectionFooterTitle;
/** sectionFooter高度 */
@property (nonatomic , assign) CGFloat sectionFooterHeight;
/** sectionHeader高度 */
@property (nonatomic , assign) CGFloat sectionHeaderHeight;
/** 控制器名称 */
@property (nonatomic , copy) NSString *vcName;
/** sectionHeader名称 */
@property (nonatomic , copy) NSString *sectionHeaderName;
/** sectionFooter名称 */
@property (nonatomic , copy) NSString *sectionFooterName;

@end
