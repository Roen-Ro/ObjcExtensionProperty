//
//  RRViewController.m
//  ObjcExtensionProperty
//
//  Created by zxllf23@163.com on 11/21/2018.
//  Copyright (c) 2018 zxllf23@163.com. All rights reserved.
//

#import "RRViewController.h"
#import "UIView+DyanmicTest.h"
#import "HttpClient.h"

@interface RRViewController ()

@property (nonatomic,lazy) HttpClient *client;

@end

@implementation RRViewController
{
    HttpClient *_client;
}

//lazy getter method for self.client
__GETTER_LAZY_IVAR(HttpClient, client, [[HttpClient alloc]initWithUrl:@"https://github.com/Roen-Ro"])

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSLog(@"log _client.url:%@",_client.url);
    NSLog(@"log self.client.url:%@",self.client.url);
	
    NSLog(@"1===>ViewProperties before setting values");
    [self logViewProperties];
    
    
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
    
    NSLog(@"{\n \tself.view.dynProperty:%@\n \tself.view.dynWeakProperty:%@\n \tself.view.dynPrimitiveValue:%d\n \tself.view.lazyProperty:%@\n\n}\n",self.view.dynProperty,self.view.dynWeakProperty,self.view.dynPrimitiveValue,self.view.lazyProperty);
}



@end
