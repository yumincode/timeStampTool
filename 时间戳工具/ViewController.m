//
//  ViewController.m
//  时间戳工具
//
//  Created by 虞敏 on 15/11/7.
//  Copyright © 2015年 YM. All rights reserved.
//

#import "ViewController.h"
#import "MyTools.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString *currentTime = [MyTools getCurrentStandarTime];
    NSLog(@"%@",currentTime);
    NSString *currentStampTime = [MyTools getCurrentTimestamp];
    NSLog(@"%@",currentStampTime);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
