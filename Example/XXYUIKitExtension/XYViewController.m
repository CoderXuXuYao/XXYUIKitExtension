//
//  XYViewController.m
//  XXYUIKitExtension
//
//  Created by JasonDraem on 12/27/2020.
//  Copyright (c) 2020 JasonDraem. All rights reserved.
//

#import "XYViewController.h"
#import "XYTestViewController.h"
#import <XXYUIKitExtension/XYUIKitExtension.h>
#import <Masonry/Masonry.h>

@interface XYViewController ()

@end

@implementation XYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self test];
}

- (void)test{
    self.view.backgroundColor = [UIColor redColor];
//    XYUIButton *button = [XYUIKitExtension initWithTitle:@"click" titleColor:[UIColor whiteColor] target:self seletor:@selector(handleWithSender:)];
    XYUIButton *button = [[XYUIKitExtension shareInstance] createWithTitle:@"click" titleColor:[UIColor whiteColor] target:self seletor:@selector(handleWithSender:)];
    button.backgroundColor = [UIColor blueColor];
    [self.view addSubview:button];
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(button.mas_width).multipliedBy(.5); // 高是宽的1/2
        make.centerX.centerY.equalTo(self.view);
    }];
}

- (void)handleWithSender:(XYUIButton *)sender{
    UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:[[XYTestViewController alloc] init]];
    [self presentViewController:nvc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
