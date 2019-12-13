//
//  JPProxyObject.h
//  03-内存管理-定时器
//
//  Created by 周健平 on 2019/12/12.
//  Copyright © 2019 周健平. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JPProxyObject : NSObject
+ (instancetype)proxyWithTarget:(id)target;
@property (nonatomic, weak) id target;
@end
