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

@property (nonatomic, strong) NSString *dynProperty; //common object property
@property (nonatomic) int dynPrimitiveValue; //primitive type property
@property (nonatomic, weak) NSString *dynWeakProperty; //weak property
@property (nonatomic, lazy) NSString *lazyProperty; //lazy property

@property (nonatomic) CGFloat *dynHeight; //default is 480.0

@end

