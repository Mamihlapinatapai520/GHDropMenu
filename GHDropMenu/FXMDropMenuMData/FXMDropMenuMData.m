//
//  FXMDropMenuMData.m
//  GHome
//
//  Created by GHome on 2017/12/22.
//  Copyright © 2017年 GHome. All rights reserved.
//
#pragma mark - 筛选菜单模型
#import "NSArray+Bounds.h"
#import "FXMDropMenuMData.h"

@implementation FXMDropMenuMData
/** 构造方法 */
- (NSMutableArray *)creatDropMenuMDataWithType: (FXMDropMenuType)dropMenuType {
    NSMutableArray *dataArray = [NSMutableArray array];
#pragma mark - 筛选菜单 - 二手房
    if (dropMenuType == FXMDropMenuType_sellHouse) {
        NSArray *titleArray = @[@"第一列",@"第一列",@"第三列",@"第四列"];
        NSArray *sellHouseTypeArray = @[
                /** 区域 */
                @(FXMDropMenuSellHouseType_zone),
                /** 价格 */
                @(FXMDropMenuSellHouseType_price),
                /** 房型 */
                @(FXMDropMenuSellHouseType_room),
                /** 更多 */
                @(FXMDropMenuSellHouseType_more)
                                        ];
        for (NSInteger index = 0 ; index < titleArray.count; index++) {
            FXMDropMenuMData *dropMenuMData = [[FXMDropMenuMData alloc]init];
            /** 标题 */
            dropMenuMData.buttonTitle = [titleArray by_ObjectAtIndex:index];
            dropMenuMData.dropMenuType = FXMDropMenuType_sellHouse;
            NSNumber *sellHouseTypeNum = [sellHouseTypeArray by_ObjectAtIndex:index];
            /** 类型 */
            dropMenuMData.sellHouseType = sellHouseTypeNum.integerValue;
            dropMenuMData.buttonSeleted = NO;
            [dataArray addObject:dropMenuMData];
        }
    }
    return dataArray;
}
/**
 构造菜单项

 @param array 传入标题数组
 @param dropMenuType dropMenuType
 @return 返回菜单项数组
 */
- (NSMutableArray *)menuArrayWithArray: (NSArray *)array
                                  type: (FXMDropMenuType)dropMenuType {
    NSMutableArray *dataArray = [NSMutableArray array];
    for (NSInteger index = 0; index < array.count ; index++) {
        FXMDropMenuMData *dropMenuMData = [[FXMDropMenuMData alloc]init];
        dropMenuMData.dropMenuType = dropMenuType;
        dropMenuMData.menuTitle = [array by_ObjectAtIndex:index];
        dropMenuMData.value = index;
        if (index == 0) {
//            dropMenuMData.menuSeleted = YES;
        } else {
            dropMenuMData.menuSeleted = NO;
        }
        [dataArray addObject:dropMenuMData];
    }
    return dataArray;
}


#pragma mark - 构建menu菜单
- (NSMutableArray *)creatArrayWithDropMenuType: (FXMDropMenuType)dropMenuType {
    
    NSMutableArray *dataArray = [NSMutableArray array];
    NSArray *firstArray = [NSArray array];
    NSArray *seondArray = [NSArray array];
    NSArray *thirdArray = [NSArray array];
    NSArray *sellHouseTypeArray = @[
                /** 区域 */
                @(FXMDropMenuSellHouseType_zone),
                /** 价格 */
                @(FXMDropMenuSellHouseType_price),
                /** 房型 */
                @(FXMDropMenuSellHouseType_room),
                /** 更多 */
                @(FXMDropMenuSellHouseType_more)
                                    ];
    if (dropMenuType == FXMDropMenuType_sellHouse) {
        firstArray = @[@"不限",@"露娜",@"孙悟空",@"妲己",@"范冰冰"];
        seondArray = @[@"不限",@"韩红",@"王宝强",@"你的益达",@"康师傅",@"百事可乐",@"品胜充电宝"];
        thirdArray = @[@"不限",@"方便面",@"海阔天空",@"江南",@"蒙牛",@"瑞士银行"];
        
        [dataArray addObject:[self menuArrayWithArray:firstArray type:FXMDropMenuType_sellHouse]];
        [dataArray addObject:[self menuArrayWithArray:seondArray type:FXMDropMenuType_sellHouse]];
        [dataArray addObject:[self menuArrayWithArray:thirdArray type:FXMDropMenuType_sellHouse]];
        [dataArray addObject:[self creatTags]];
        
    }

    return dataArray;
}
#pragma mark - 构建标签菜单
- (NSMutableArray *)creatTags {
    /** 标签数组 */
    NSArray *titleArray = @[
                            @"手游",
                            @"网友",
                            @"吃的",
                            @"clear",
                            ];
    /** 面积数组 */

    NSArray *area = @[
                      @"王者荣耀",
                      @"英雄联盟",
                      @"魔兽世界",
                      @"太平天国",
            
                      ];
    /** 朝向数组 */

    NSArray *toward = @[
                      @"极品飞车1",
                      @"极品飞车2",
                      @"极品飞车3",
                      @"极品飞车4",
                      @"极品飞车5",
                      @"极品飞车6",
                      @"极品飞车7",
                      @"极品飞车18",
                      @"极品飞车10",
                      @"极品飞车1100"
                      ];
    NSArray *tag = @[
                        @"辣条",
                        @"硬豆干",
                        @"辣椒",
                        @"薯片",
                        @"翘课了",
                  
                        ];
  
    NSArray *items = @[
    area,
    toward,
    tag,
                       ];
    NSArray *dropMenuTagTypeArray = @[
                 /** 面积 */
                 @(FXMDropMenuTagType_area),
                 /** 朝向 */
                 @(FXMDropMenuTagType_towrad),
                 /** 标签 */
                 @(FXMDropMenuTagType_tag),
                 /** 清空 */
                 @(FXMDropMenuTagType_clear),
                                     ];
    NSArray *isMultipleArray = @[
                                 [NSNumber numberWithBool:NO],
                                 [NSNumber numberWithBool:NO],
                                 [NSNumber numberWithBool:YES],
                                 [NSNumber numberWithBool:NO],
                                      ];
    NSMutableArray *dataArray = [NSMutableArray array];
    for (NSInteger index = 0 ; index < dropMenuTagTypeArray.count; index++) {
        FXMDropMenuMData *dropMenuSectionMData = [[FXMDropMenuMData alloc]init];
        dropMenuSectionMData.menuTitle = [titleArray by_ObjectAtIndex:index];
        dropMenuSectionMData.sectionHeaderHeight = 44;
        NSNumber *dropMenuTagTypeNum = [dropMenuTagTypeArray by_ObjectAtIndex:index];
        dropMenuSectionMData.dropMenuTagType = dropMenuTagTypeNum.integerValue;
        NSNumber *isMultipleNum = [isMultipleArray by_ObjectAtIndex:index];

        dropMenuSectionMData.items = [self creatItemWithNames: [items by_ObjectAtIndex:index]dropMenuTagType:dropMenuSectionMData.dropMenuTagType isMultiple:isMultipleNum.integerValue];

        if (dropMenuSectionMData.dropMenuTagType == FXMDropMenuTagType_clear) {
            dropMenuSectionMData.sectionFooterHeight = 114;
            dropMenuSectionMData.sectionHeaderHeight = 0;
        } else {
            dropMenuSectionMData.sectionFooterHeight = 10;
        }
        [dataArray addObject:dropMenuSectionMData];
    }
    return dataArray;
}

- (NSMutableArray *)creatItemWithNames: (NSArray *)names
                       dropMenuTagType: (FXMDropMenuTagType) dropMenuTagType
                            isMultiple: (BOOL)isMultiple {
    NSMutableArray *dataArray = [NSMutableArray array];

    for (NSInteger index = 0; index < names.count; index++) {
        FXMDropMenuMData *dropMenuMData = [[FXMDropMenuMData alloc]init];
        dropMenuMData.tagTitle = [names by_ObjectAtIndex:index];
        dropMenuMData.dropMenuTagType = dropMenuTagType;
        dropMenuMData.isMultiple = isMultiple;
        dropMenuMData.tagValue = index;

        [dataArray addObject:dropMenuMData];
    }
    return dataArray;
}

#pragma mark - 懒加载
- (NSMutableArray *)dataArray {
    if (_dataArray == nil) {
        _dataArray = [NSMutableArray array];
    }
    return _dataArray;
}
- (NSArray *)items {
    if (_items == nil) {
        _items = [NSArray array];
    }
    return _items;
}
@end
