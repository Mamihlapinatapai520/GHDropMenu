//
//  FXMDropMenuMData.h
//  FXMOnLineAPP
//
//  Created by GHome on 2017/12/22.
//  Copyright © 2017年 GHome. All rights reserved.
//
#pragma mark - 筛选菜单模型
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
typedef enum : NSUInteger {
    /** 不限 */
    FXMDropMenuBrokerMenuType_all = 1,
    /** 销售达人 */
    FXMDropMenuBrokerMenuType_sellHot,
    /** 客户热评 */
    FXMDropMenuBrokerMenuType_customerHot,
    /** 带看活跃 */
    FXMDropMenuBrokerMenuType_followSee,
}FXMDropMenuBrokerMenuType;
#pragma mark - tag类型
typedef enum : NSUInteger {
    /** 面积 */
    FXMDropMenuTagType_area = 1,
    /** 朝向 */
    FXMDropMenuTagType_towrad,
    /** 标签 */
    FXMDropMenuTagType_tag,
    /** 楼龄 */
    FXMDropMenuTagType_houseAge,
    /** 楼层 */
    FXMDropMenuTagType_houseFloor,
    /** 装修 */
    FXMDropMenuTagType_decoration,
    /** 电梯 */
    FXMDropMenuTagType_elevator,
    /** 用途 */
    FXMDropMenuTagType_use,
    /** 权属 */
    FXMDropMenuTagType_ownership,
    /** 清空 */
    FXMDropMenuTagType_clear,
} FXMDropMenuTagType;
#pragma mark - 筛选菜单标题类型
//typedef enum : NSUInteger {
////    /** 二手房 */
////    FXMDropMenuType_sellHouse = 1,
////    /** 经纪人 */
////    FXMDropMenuType_broker,
////    /** 小区 */
////    FXMDropMenuType_community,
////    /** 租房 */
////    FXMDropMenuType_rentHouse,
//}FXMDropMenuTitleType;
#pragma mark - 筛选菜单类型
typedef enum : NSUInteger {
    /** 二手房 */
    FXMDropMenuType_sellHouse = 1,
    /** 经纪人 */
    FXMDropMenuType_broker,
    /** 小区 */
    FXMDropMenuType_community,
    /** 租房 */
    FXMDropMenuType_rentHouse,
}FXMDropMenuType;
#pragma mark - 小区标题类型
typedef enum : NSUInteger {
    /** 区域 */
    FXMDropMenuCommunityType_zone = 40,
    /** 均价 */
    FXMDropMenuCommunityType_averagePrice,
    /** 排序 */
    FXMDropMenuCommunityType_soft,
    
}FXMDropMenuCommunityType;
#pragma mark - 经纪人标题类型
typedef enum : NSUInteger {
    /** 区域 */
    FXMDropMenuBrokerType_zone = 30,
    /** 筛选 */
    FXMDropMenuBrokerType_filter,
    /** 排序 */
    FXMDropMenuBrokerType_soft,
}FXMDropMenuBrokerType;
#pragma mark - 租房标题类型
typedef enum : NSUInteger {
    /** 区域 */
    FXMDropMenuRentHouseType_zone = 20,
    /** 租金 */
    FXMDropMenuRentHouseType_rent,
    /** 房型 */
    FXMDropMenuRentHouseType_room,
    /** 更多 */
    FXMDropMenuRentHouseType_more,
}FXMDropMenuRentHouseType;
#pragma mark - 二手房标题类型
typedef enum : NSUInteger {
    /** 区域 */
    FXMDropMenuSellHouseType_zone = 10,
    /** 价格 */
    FXMDropMenuSellHouseType_price,
    /** 房型 */
    FXMDropMenuSellHouseType_room,
    /** 更多 */
    FXMDropMenuSellHouseType_more,
}FXMDropMenuSellHouseType;

#import "FXMBaseMData.h"
/** 筛选菜单模型 */
@interface FXMDropMenuMData : FXMBaseMData
#pragma mark - 顶部菜单
/** 顶部菜单标题 */
@property (nonatomic , copy) NSString *buttonTitle;
/** 标题是否被选中 */
@property (nonatomic , assign) BOOL buttonSeleted;

#pragma mark - 单列筛选
@property (nonatomic , copy) NSString *menuTitle;
@property (nonatomic , assign) BOOL menuSeleted;
@property (nonatomic , assign) NSInteger value;

/** 标题 */
#pragma mark - 更多筛选
/** 标签标题 */
@property (nonatomic , copy) NSString *tagTitle;
/** 标签选中 */
@property (nonatomic , assign) BOOL tagSeleted;
/** 是否是多选 */
@property (nonatomic , assign) BOOL isMultiple;
@property (nonatomic , assign) NSInteger tagValue;

@property (nonatomic , assign) FXMDropMenuTagType dropMenuTagType;
#pragma mark - 公共
@property (nonatomic , strong) NSArray *items;
@property (nonatomic , strong) NSMutableArray *dataArray;
@property (nonatomic , strong) NSMutableArray *buttonTitleArray;

/** 类型 */
@property (nonatomic , assign) FXMDropMenuType dropMenuType;
/** 二手房 */
@property (nonatomic , assign) FXMDropMenuSellHouseType sellHouseType;
@property (nonatomic , assign) FXMDropMenuBrokerType brokerType;
@property (nonatomic , assign) FXMDropMenuCommunityType communityType;
@property (nonatomic , assign) FXMDropMenuRentHouseType rentHouseType;
@property (nonatomic , assign) FXMDropMenuBrokerMenuType brokerMenuType ;
@property (nonatomic , assign) NSInteger currentTag;

#pragma mark - footerView
/** 用户输入最大值 */
@property (nonatomic , assign) NSInteger max;
/** 用户输入最小值 */
@property (nonatomic , assign) NSInteger min;
/** 确定按钮是否可以点击 */
@property (nonatomic , assign) BOOL isEnble;
/** 构造方法 */
- (NSMutableArray *)creatDropMenuMDataWithType: (FXMDropMenuType)dropMenuType;
- (NSMutableArray *)creatArrayWithDropMenuType: (FXMDropMenuType)dropMenuType;
@end
