//
//  UIView+DyanmicTest.m
//  OABLECentralManager_Example
//
//  Created by 罗亮富 on 2018/11/21.
//  Copyright © 2018年 zxllf23@163.com. All rights reserved.
//

#import "UIView+DyanmicTest.h"

@implementation UIView (DyanmicTest)

//common getter/setter
__SETTER(dynProperty, setDynProperty:, OBJC_ASSOCIATION_RETAIN)
__GETTER(NSString, dynProperty)

//primitive type getter/setter
__SETTER_PRIMITIVE(int,dynPrimitiveValue, setDynPrimitiveValue:, numberWithInt:)
__GETTER_PRIMITIVE(int, dynPrimitiveValue, intValue)

//weak reference getter/setter
__SETTER_WEAK(dynWeakProperty, setDynWeakProperty:)
__GETTER_WEAK(NSString, dynWeakProperty)

//lazy property getter
__GETTER_LAZY(NSString, lazyProperty,[NSString stringWithFormat:@"lazy created on %@",[NSDate date]])

//getter with default return value
__SETTER_PRIMITIVE(CGFloat, dynHeight, setDynHeight:, numberWithDouble:)
__GETTER_PRIMITIVE_DEFAULT(CGFloat, dynHeight, 480.0, doubleValue)


//setter with customize code
__SETTER_CUSTOMIZE(tableView, setTableView:, OBJC_ASSOCIATION_RETAIN, {
    UITableView *tbv = tableView;
    tbv.dataSource = self;
    tbv.delegate = self;
})
__GETTER(UITableView, tableView)


@end
