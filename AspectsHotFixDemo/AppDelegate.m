//
//  AppDelegate.m
//  AspectsHotFixDemo
//
//  Created by 周兴 on 2018/3/14.
//  Copyright © 2018年 zx. All rights reserved.
//

#import "AppDelegate.h"
//#import "MyHotFix.h"
#import "LBYFix.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [self repair];
    
    return YES;
}

- (void)repair {
    
    //修复
    [LBYFix fixIt];
    
    
    //1.修复ViewController中的addObject添加空元素崩溃问题
    NSString *fixScriptString1 = @"\
    fixMethod('ViewController', 'addObject:', 1, false, function(instance, originInvocation, originArguments){ \
    console.log(instance); \
    console.log(originInvocation); \
    console.log(originArguments); \
    if (originArguments[0] == null) { \
    console.log('字符串为空'); \
    } else { \
    runInvocation(originInvocation); \
    } \
    }); \
    \
    ";
    
    [LBYFix evalString:fixScriptString1];
    
    
    //2.在ViewController中的addObject方法内调用ViewController的testMethod方法
    NSString *fixScriptString2 = @"\
    fixMethod('ViewController', 'addObject:', 2, false, function(instance, originInvocation, originArguments){ \
    runInstanceMethod('ViewController', 'testMethod'); \
    }); \
    \
    ";
    [LBYFix evalString:fixScriptString2];
}




@end
