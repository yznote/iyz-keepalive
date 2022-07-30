//
//  RKKeepAlive.h
//  RKKeepAlive
//
//  Created by RK on 2022/7/1.
//  Copyright © 2022 cat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface RKKeepAlive : NSObject

+(instancetype)sharedKeepInstance;

#pragma mark - 测试
/**
 * 测试:显示log
 * 默认不显示
 */
-(void)showLog:(BOOL)showLog;

/**
 * 测试:运行时间弹窗
 * 注意需要先设置`showLog:`为YES才有效
 */
-(void)showRunTime;


#pragma mark - 调用
/**
 * 开启监听
 */
-(void)startAppLifeCycleMonitor;

@end


