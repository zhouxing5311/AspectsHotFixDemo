//
//  MyHotFix.h
//  AspectsHotFixDemo
//
//  Created by 周兴 on 2018/3/14.
//  Copyright © 2018年 zx. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyHotFix : NSObject

+ (void)fixIt;
+ (void)evalString:(NSString *)javascriptString;

@end
