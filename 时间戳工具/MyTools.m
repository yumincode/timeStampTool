//
//  MyTools.m
//  时间戳工具
//
//  Created by 虞敏 on 15/11/7.
//  Copyright © 2015年 YM. All rights reserved.
//

#import "MyTools.h"

@implementation MyTools
/**
 *  获取当前时间的时间戳 （例子：1464326536）
 *
 *  @return 时间戳字符串型
 */
+ (NSString *)getCurrentTimestamp{
    //获取系统当前的时间戳
    NSDate *date = [NSDate dateWithTimeIntervalSinceNow:0];
    NSTimeInterval current = [date timeIntervalSince1970];
    NSString *timeString = [NSString stringWithFormat:@"%f",current];
    //返回时间戳，字符类型
    return timeString;
}
/**
 *  获取当前标准时间 （例子：2015-11-7）
 *
 *  @return 标准时间字符串类型
 */
+ (NSString *)getCurrentStandarTime{
    NSDate * sendDate = [NSDate date];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:MM:ss"];
    
    NSString *locationString = [dateFormatter stringFromDate:sendDate];
    
    return locationString;
}
/**
 *  时间戳转换为时间的方法
 *
 *  @param standarTime 时间戳
 *
 *  @return 标准时间字符串
 */
+ (NSString *)timestampChangeStandarTime:(NSString *)standarTime{
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"yyyyMMddHHMMss"];
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:[standarTime doubleValue]];
    NSString *dateString = [formatter stringFromDate:date];
    return dateString;
}
/**
 *  时间转换为星期
 *
 *  @param time 时间
 *
 *  @return 星期
 */
+ (NSString *)timeToWeek:(NSString *)time{
    NSDateFormatter *inputFormatter = [[NSDateFormatter alloc]init];
    [inputFormatter setDateFormat:@"yyyyMMddHHmmss"];
    NSDate *formatterDate = [inputFormatter dateFromString:time];
    NSDateFormatter *outPutFormatter = [[NSDateFormatter alloc]init];
    [outPutFormatter setDateFormat:@"EEEE"];
    NSString *newDateString = [outPutFormatter stringFromDate:formatterDate];
    return newDateString;
}
//时间戳转化为当前时间
+(NSString *)timeStampToDateTime:(NSInteger)timeStamp{
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeStamp];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString *dateString = [dateFormat stringFromDate:date];
    return dateString;
}
@end
