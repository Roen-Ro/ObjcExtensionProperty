//
//  RRViewController.m
//  ObjcExtensionProperty
//
//  Created by zxllf23@163.com on 11/21/2018.
//  Copyright (c) 2018 zxllf23@163.com. All rights reserved.
//

#import "RRViewController.h"
#import "UIView+DyanmicTest.h"

@interface RRViewController ()

@end

@implementation RRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    NSLog(@"1===>ViewProperties before setting values");
    [self logViewProperties];
    
//    @property (nonatomic, strong) NSString *dynProperty;
//    @property (nonatomic, weak) NSString *dynWeakProperty;
//    @property (nonatomic) int dynPrimitiveValue;
//    @property (nonatomic, lazy) NSString *lazyProperty;
//    @property (nonatomic, lazy) NSString *lazyFirstAccessTimeString;
    
    self.view.dynProperty = [NSString stringWithFormat:@"assigned in %s",__PRETTY_FUNCTION__];
    self.view.dynWeakProperty = [NSString stringWithFormat:@"viewcontroller is %p",self];
    self.view.dynPrimitiveValue = 9527;
    NSLog(@"2===>ViewProperties after setting values");
    [self logViewProperties];
}

- (IBAction)logProperties:(id)sender {
    
    NSLog(@"3===>ViewProperties after runloop");
    [self logViewProperties];
}


-(void)logViewProperties {
    
    NSLog(@"{\n \tself.view.dynProperty:%@\n \tself.view.dynWeakProperty:%@\n \tself.view.dynPrimitiveValue:%d\n \tself.view.lazyProperty:%@\n \tself.view.lazyFirstAccessTimeString:%@\n\n}\n",self.view.dynProperty,self.view.dynWeakProperty,self.view.dynPrimitiveValue,self.view.lazyProperty,self.view.lazyFirstAccessTimeString);
}

@end
