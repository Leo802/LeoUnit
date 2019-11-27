//
//  LeoAppInfo.h
//  Example
//
//  Created by Leo on 2019/11/27.
//  Copyright © 2019 leo. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LeoAppInfo : NSObject

+ (NSString *)leoGetAppName;
+ (NSString *)leoGetAppVersion;
+ (NSString *)leoGetAppBundleId;

@end

NS_ASSUME_NONNULL_END
