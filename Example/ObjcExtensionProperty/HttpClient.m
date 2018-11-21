//
//  HttpClient.m
//  ObjcExtensionProperty_Example
//
//  Created by 罗亮富 on 2018/11/21.
//  Copyright © 2018年 zxllf23@163.com. All rights reserved.
//

#import "HttpClient.h"

@implementation HttpClient
@synthesize url = _url;

-(instancetype)initWithUrl:(NSString *)url {
    self = [super init];
    _url = [url copy];
    return self;
}
@end
