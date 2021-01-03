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
    XYUIButton *button = [XYUIKitExtension initWithTitle:@"click" titleColor:[UIColor whiteColor] target:self seletor:@selector(handleWithSender:)];
    button.frame = CGRectMake(0, 0, 50, 30);
    button.center = self.view.center;
    [self.view addSubview:button];
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
