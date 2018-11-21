//
//  HttpClient.h
//  ObjcExtensionProperty_Example
//
//  Created by 罗亮富 on 2018/11/21.
//  Copyright © 2018年 zxllf23@163.com. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface HttpClient : NSObject

@property (nonatomic, readonly) NSString *url;
-(instancetype)initWithUrl:(NSString *)url;

@end

