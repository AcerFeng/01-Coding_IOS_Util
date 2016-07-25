//
//  NSDateTestController.m
//  01-Coding_IOS_Util
//
//  Created by lanfeng on 16/7/25.
//  Copyright © 2016年 lanfeng. All rights reserved.
//

#import "NSDateTestController.h"

@implementation NSDateTestController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    NSLog(@"01---%@", [NSDate dateFromString:@"2015-02-03 03:22:44"]);
    NSLog(@"02---%@", [NSDate dateFromString:[[NSDate date] stringWithFormat:@"yyyy-MM-dd"] withFormat:@"yyyy-MM-dd"]);
    
    NSLog(@"03---%@", [NSDate stringFromDate:[[NSDate alloc] initWithTimeIntervalSince1970:0]]);
    NSLog(@"04---%@", [NSDate stringForDisplayFromDate:[NSDate date]]);
    
    
    NSDate *date = [[NSDate alloc] initWithTimeIntervalSinceNow:-2];
    NSLog(@"03---%@", [date string_yyyy_MM_dd_EEE]);
}

@end
