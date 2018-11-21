//
//  UIView+DyanmicTest.h
//  OABLECentralManager_Example
//
//  Created by 罗亮富 on 2018/11/21.
//  Copyright © 2018年 zxllf23@163.com. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ObjcExtensionProperty.h"

@interface UIView (DyanmicTest)

@property (nonatomic, strong) NSString *dynProperty;
@property (nonatomic, weak) NSString *dynWeakProperty;
@property (nonatomic) int dynPrimitiveValue;
@property (nonatomic, lazy) NSString *lazyProperty;
@property (nonatomic, lazy) NSString *lazyFirstAccessTimeString;
@end

