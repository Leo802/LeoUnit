//
//  UICollectionViewCell+leoAdd.m
//  Example
//
//  Created by Leo on 2019/11/27.
//  Copyright © 2019 leo. All rights reserved.
//

#import "UICollectionViewCell+leoAdd.h"

@implementation UICollectionViewCell (leoAdd)

+ (NSString *)getCellIdentifier
{
    return NSStringFromClass([self class]);
}

@end
