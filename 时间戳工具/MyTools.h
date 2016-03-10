//
//  MyTools.h
//  时间戳工具
//
//  Created by 虞敏 on 15/11/7.
//  Copyright © 2015年 YM. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyTools : NSObject
/**
 *  获取当前时间的时间戳 （例子：1464326636）
 *
 *  @return 时间戳字符串型
 */
+ (NSString *)getCurrentTimestamp;

/**
 *  获取当前标准时间 （例子：2015-11-07）
 *
 *  @return 标准时间字符串型
 */
+ (NSString *)getCurrentStandarTime;

/**
 *  时间戳转换为时间的方法
 *
 *  @param timestamp 时间戳
 *
 *  @return 标准时间字符串
 */
+ (NSString *)timestampChangeStandarTime:(NSString *)standarTime;

/**
 *  时间转换星期
 */
+ (NSString *)timeToWeek:(NSString *)time;
@end
