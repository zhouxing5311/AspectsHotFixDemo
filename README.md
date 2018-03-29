# 利用Aspects框架实现热修复的demo

## 原文地址：http://www.cocoachina.com/ios/20180309/22517.html



### ps：新来的小伙伴，更详细的修复实现可以参考这位兄弟写的框架。[简书][https://www.jianshu.com/p/d4574a4268b3]，[github][https://github.com/709213219/LBYFix]。console.log他没有做处理，可以参考我这份代码里的LBYFix.m文件53行添加打印。


### 通过给数组添加空元素来判断是否能在AppDelegate中对其进行热修复

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

