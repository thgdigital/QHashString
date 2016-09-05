//
//  ViewController.m
//  QHashStringExample
//
//  Created by JHQ0228 on 16/7/10.
//  Copyright © 2016年 QianQian-Studio. All rights reserved.
//

#import "ViewController.h"

#import "QHashString.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
//    [self demo1];
    
//    [self demo2];
    
    [self demo3];
}

- (void)demo1 {
    
    NSString *str = @"hello world";
    
    NSLog(@"str: %@", str);
    
    /// md5 散列
    
        NSString *md5Str = [str q_md5String];
    
        NSLog(@"md5Str : %@\n", md5Str);
    
    /// hmac 散列
    
        NSString *hmacStr = [str q_hmacMD5StringWithKey:@"yourKey"];
    
        NSLog(@"hmacStr: %@", hmacStr);
}

- (void)demo2 {
    
    NSString *str = @"hello world";
    
    NSLog(@"str: %@", str);
    
    /// time 散列
    
        NSString *timeStr = [str q_timeMD5StringWithKey:@"yourKey"];
        
        NSLog(@"timeStr: %@", timeStr);
}

- (void)demo3 {
    
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"Info.plist" ofType:nil];
    
    /// 文件 散列
    
        NSString *fileMD5Str = [filePath q_fileMD5Hash];
    
        NSLog(@"fileMD5Str: %@", fileMD5Str);
}

@end
