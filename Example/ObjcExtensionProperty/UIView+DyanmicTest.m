//
//  UIView+DyanmicTest.m
//  OABLECentralManager_Example
//
//  Created by 罗亮富 on 2018/11/21.
//  Copyright © 2018年 zxllf23@163.com. All rights reserved.
//

#import "UIView+DyanmicTest.h"

@implementation UIView (DyanmicTest)

__SETTER(dynProperty, setDynProperty, OBJC_ASSOCIATION_RETAIN)
__GETTER(NSString, dynProperty)

__SETTER_WEAK(dynWeakProperty, setDynWeakProperty)
__GETTER_WEAK(NSString, dynWeakProperty)

__SETTER_PRIMITIVE(int,dynPrimitiveValue, setDynPrimitiveValue, numberWithInt:)
__GETTER_PRIMITIVE(int, dynPrimitiveValue, intValue)

__GETTER_LAZY(NSString, lazyProperty, [NSMutableString stringWithString:@"I'm lazyProperty"])
__GETTER_LAZY(NSString, lazyFirstAccessTimeString,[NSString stringWithFormat:@"lazy created on %@",[NSDate date]])

@end
