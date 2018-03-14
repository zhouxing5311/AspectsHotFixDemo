//
//  AppDelegate.m
//  AspectsHotFixDemo
//
//  Created by 周兴 on 2018/3/14.
//  Copyright © 2018年 zx. All rights reserved.
//

#import "AppDelegate.h"
#import "MyHotFix.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [self repair];
    
    return YES;
}

- (void)repair {
    
    //修复
    [MyHotFix fixIt];
    
    NSString *fixScriptString = @"\
    fixInstanceMethodReplace('ViewController', 'addObject:', function(instance, originInvocation, originArguments){ \
    if (originArguments[0] == null) { \
    console.log('字符串为空'); \
    } else { \
    runInvocation(originInvocation); \
    } \
    }); \
    \
    ";
    
    [MyHotFix evalString:fixScriptString];
    
}




@end
