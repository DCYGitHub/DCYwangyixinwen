//
//  ViewController.m
//  第二题
//
//  Created by apple on 16/4/15.
//  Copyright © 2016年 apple. All rights reserved.
//
#import "AFHTTPSessionManager.h"
#import "ViewController.h"
#import "AFURLSessionManager.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self upload];
    
}
-(void)upload
{
    AFHTTPSessionManager * manager=[AFHTTPSessionManager manager];
    NSURLRequest * request =[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://localhost/upload.php"]];
    NSData *data=[NSData dataWithContentsOfFile:[[NSBundle mainBundle]pathForResource:@"test.png" ofType:nil]];
    [manager uploadTaskWithRequest:request fromData:data progress:nil completionHandler:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
