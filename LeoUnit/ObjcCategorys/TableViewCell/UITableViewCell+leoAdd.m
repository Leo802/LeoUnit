//
//  UITableViewCell+leoAdd.m
//  Example
//
//  Created by Leo on 2019/11/27.
//  Copyright © 2019 leo. All rights reserved.
//

#import "UITableViewCell+leoAdd.h"

@implementation UITableViewCell (leoAdd)

+ (NSString *)getCellIdentifier
{
    return NSStringFromClass([self class]);
}

@end
