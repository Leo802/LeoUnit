//
//  LeoAppInfo.m
//  Example
//
//  Created by Leo on 2019/11/27.
//  Copyright © 2019 leo. All rights reserved.
//

#import "LeoAppInfo.h"

@implementation LeoAppInfo

+ (NSString *)leoGetAppName
{
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    NSString *appName = [infoDictionary objectForKey:@"CFBundleDisplayName"];
    return appName;
}

+ (NSString *)leoGetAppVersion
{
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    NSString *appVersion = [infoDictionary objectForKey:@"CFBundleShortVersionString"];
    return appVersion;
}

+ (NSString *)leoGetAppBundleId
{
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    NSString *appBundleId = [infoDictionary objectForKey:@"CFBundleIdentifier"];
    return appBundleId;
}

@end
