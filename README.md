# 利用Aspects框架实现热修复的demo

## 原文地址：http://www.cocoachina.com/ios/20180309/22517.html


###通过给数组添加空元素来判断是否能在AppDelegate中对其进行热修复

```
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

```

