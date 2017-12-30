//
//  ViewController.m
//  GHDropMenu
//
//  Created by GHome on 2017/12/30.
//  Copyright © 2017年 GHome. All rights reserved.
//

#import "ViewController.h"
#import "FXMCommonDropMenu.h"
@interface ViewController ()<FXMCommonDropMenuDelegate>
@property (nonatomic , strong) FXMCommonDropMenu *dropMenu;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view addSubview:self.dropMenu];

}

- (void)commonDropMenu:(FXMCommonDropMenu *)commonDropMenu
             areaArray:(NSMutableArray *)areaArray
           towardArray:(NSMutableArray *)towardArray
             tagsArray:(NSMutableArray *)tagsArray {
    NSString *areaStr = [areaArray componentsJoinedByString:@","];
    NSString *towardStr = [towardArray componentsJoinedByString:@","];
    NSString *tagStr = [tagsArray componentsJoinedByString:@","];

    NSString *string= [NSString stringWithFormat:@"手游%@\n网友%@\n吃的%@\n",areaStr,towardStr,tagStr];
    KAlert(string);

}
- (void)commonDropMenu:(FXMCommonDropMenu *)commonDropMenu
          dropMenuType:(FXMDropMenuType)dropMenuType
                  zone:(NSInteger)zone
                 price:(NSInteger)price
                  room:(NSInteger)room
                  soft:(NSInteger)soft
                filter:(NSInteger)filter
          averagePrice:(NSInteger)averagePrice {
    NSString *tipString = [NSString stringWithFormat:@"第一列%ld\n第二列%ld\n第三列%ld\n",(long)zone,(long)price,(long)price];
    KAlert(tipString);
}
- (void)commonDropMenu:(FXMCommonDropMenu *)commonDropMenu
          dropMenuType:(FXMDropMenuType)dropMenuType
                   min:(NSInteger)min
                   max:(NSInteger)max {
    NSLog(@"min%ld",(long)min);
    NSLog(@"max%ld",(long)max);

}
- (FXMCommonDropMenu *)dropMenu {
    if (_dropMenu == nil) {
        _dropMenu = [[FXMCommonDropMenu alloc]initWithFrame:CGRectMake(0, 64, kScreenWidth, kDropMenuHeight)dropMenuType:FXMDropMenuType_sellHouse];
        _dropMenu.commonDropMenuY = 114;
        _dropMenu.delegate = self;
    }
    return _dropMenu;
}

@end
