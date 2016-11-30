//
//  ViewController.m
//  代码适配Demo
//
//  Created by zhangqian on 16/11/30.
//  Copyright © 2016年 Development. All rights reserved.
//

#import "ViewController.h"
#import "UIView+frame.h"

#define  Left   25.f
#define  Top    64.f+25.f
#define  Right  25.f
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor =[UIColor whiteColor];
    self.TestoneLabel = [UILabel new];
    self.TestoneLabel.frame = CGRectMake(Left, Top, (self.view.width-Left*3)/2, 30);
    self.TestoneLabel.backgroundColor= [UIColor yellowColor];
    [self.view addSubview:self.TestoneLabel];
    
    self.TesttwoLabel = [UILabel new];
    self.TesttwoLabel.frame = CGRectMake(self.TestoneLabel.right+Left, self.TestoneLabel.top, self.TestoneLabel.width, self.TestoneLabel.height);
    self.TesttwoLabel.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.TesttwoLabel];
    
    self.TestoneButton = [[UIButton alloc]init];
    self.TestoneButton.frame = CGRectMake(self.TestoneLabel.left-10, self.TestoneLabel.bottom+15, self.view.width-15*2, self.TestoneLabel.height);
    self.TestoneButton.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:self.TestoneButton];
    
    [self.TesttwoButton sizeToFit];
    
    self.TesttwoButton = [[UIButton alloc]init];
    self.TesttwoButton.frame = CGRectMake(self.TesttwoButton.left+10, self.TesttwoButton.bottom+15, self.TesttwoButton.width, self.TesttwoButton.height);
    self.TesttwoButton.backgroundColor = [UIColor blackColor];
    [self.view addSubview:self.TesttwoButton];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
