//
//  ViewController.m
//  AspectsHotFixDemo
//
//  Created by 周兴 on 2018/3/14.
//  Copyright © 2018年 zx. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
{
    NSMutableArray *testArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    testArray = [NSMutableArray array];
}

//添加空元素
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self addObject:nil];
}

- (void)addObject:(NSString *)string {
    [testArray addObject:string];
    NSLog(@"添加成功");
}

@end
