//
//  AppDelegate+Umeng.m
//  testDemo
//
//  Created by mac_leo on 16/7/2.
//  Copyright © 2016年 三秒. All rights reserved.
//

#import "AppDelegate+Umeng.h"

@implementation AppDelegate (Umeng)

-(void)setupUMeng{
    //友盟
    NSString *bundleID = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleIdentifier"];
    if ([bundleID isEqualToString:@"com.lspo.testDemo"]) {
        UMConfigInstance.appKey = @"576df16d67e58e72c4005e36";
        UMConfigInstance.channelId = nil;
        UMConfigInstance.eSType = E_UM_NORMAL; // 仅适用于游戏场景，应用统计不用设置
        //获得版本号
        NSString *version = [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
        [MobClick setAppVersion:version];
#if DEBUG
        [MobClick setLogEnabled:YES];
#else
        [MobClick setLogEnabled:NO];
#endif
    }
}

@end
