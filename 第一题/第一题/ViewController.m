//
//  ViewController.m
//  第一题
//
//  Created by apple on 16/4/15.
//  Copyright © 2016年 apple. All rights reserved.
//

#import "ViewController.h"
#import "SDWebImageManager.h"
@interface ViewController ()
@property(nonatomic,strong)UIImage*img;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self download];
    
    // Do any additional setup after loading the view, typically from a nib.
}
-(void)download
{
    NSURL * url=[NSURL URLWithString:@"http://localhost/images/test.png"];
    [[SDWebImageManager sharedManager]downloadImageWithURL:url options:0 progress:nil completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, BOOL finished, NSURL *imageURL) {
        NSLog(@"%f",image.scale);
        UIImageView*imgv=[[UIImageView alloc]init];
        imgv.frame=self.view.bounds;
        
        imgv.image=image;
        [self.view addSubview:imgv];
        
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
