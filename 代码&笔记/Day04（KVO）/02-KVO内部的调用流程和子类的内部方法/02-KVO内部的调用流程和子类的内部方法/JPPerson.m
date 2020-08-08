//
//  JPPerson.m
//  01-KVO
//
//  Created by 周健平 on 2019/10/24.
//  Copyright © 2019 周健平. All rights reserved.
//

#import "JPPerson.h"

@implementation JPPerson

// KVO底层是按照KVC的流程走，先找方法，找到就重写，找不到就来这里看看是否能访问成员变量
// 添加KVO和使用KVC都会【各自】调用这里最多二次，setter和getter各来一次，之后重复访问这个成员变量就不会再来了
// 例如这里的height，只有setter方法，没有getter方法，当添加KVO和使用KVC（valueForKey:）时都会各自来一次这里
+ (BOOL)accessInstanceVariablesDirectly {
    return YES;
}

- (void)_setHeight:(int)height {
    isHeight = height;
    NSLog(@"setHeight");
}

- (void)setMoney:(int)money {
    NSLog(@"setMoney");
}
- (NSString *)money {
    return @"no money";
}

- (void)setAge:(int)age {
    _age = age;
    NSLog(@"setAge");
}

- (void)setWeight:(int)weight {
    _weight = weight;
    NSLog(@"setWeight");
}

- (void)willChangeValueForKey:(NSString *)key {
    [super willChangeValueForKey:key];
    NSLog(@"willChangeValueForKey:%@", key);
}

- (void)didChangeValueForKey:(NSString *)key {
    NSLog(@"didChangeValueForKey:%@ --- begin", key);
    [super didChangeValueForKey:key];
    NSLog(@"didChangeValueForKey:%@ --- end", key);
}

@end
