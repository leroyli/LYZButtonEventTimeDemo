//
//  ViewController.m
//  LYZButtonEventTimeDemo
//
//  Created by artios on 2016/12/22.
//  Copyright © 2016年 artios. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+time.h"

@interface ViewController ()

@property (nonatomic, strong) UILabel   *label;
@property (nonatomic, assign) NSInteger count;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setupViews];
    
}

- (void)setupViews{
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.label = [UILabel new];
    self.label.frame = CGRectMake(50, 200, [[UIScreen mainScreen] bounds].size.width - 50*2.0, 50);
    self.label.backgroundColor = [UIColor cyanColor];
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.textColor = [UIColor blackColor];
    [self.view addSubview:self.label];
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.backgroundColor = [UIColor redColor];
    button.frame = CGRectMake(100, 100, [[UIScreen mainScreen] bounds].size.width - 100*2.0, 40);
    [button setTitle:@"click here" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    button.mm_acceptEventInterval = 3.0f;
    
}

- (void)buttonAction:(UIButton *)sender{
    
    self.count++;
    
    self.label.text = [NSString stringWithFormat:@"you have clicked %lu times",self.count];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
