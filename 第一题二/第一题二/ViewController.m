//
//  ViewController.m
//  第一题二
//
//  Created by apple on 16/4/15.
//  Copyright © 2016年 apple. All rights reserved.
//
#import <UIKit/UIKit.h>
#import "AFNetworking.h"
#import "ViewController.h"
//#import "HMSAXTool.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //[self downloadAA];
    NSURLRequest *requeset = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://localhost/images/test.png"]];
//    [NSURLConnection sendAsynchronousRequest:requeset queue:[NSOperationQueue mainQueue] completionHandler:^(NSURLResponse * _Nullable response, NSData * _Nullable data, NSError * _Nullable connectionError) {
//        UIImage * img=[UIImage imageWithData:data];
//        UIImageView * imgv=[[UIImageView alloc]initWithFrame:self.view.bounds];
//        imgv.image=img;
//        [self.view addSubview:imgv];
//    }];
    
    AFURLSessionManager * manager=[[AFURLSessionManager alloc]init];
    [[manager dataTaskWithRequest:requeset completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
        NSLog(@"%@--%@",response,responseObject);
    }]resume];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
