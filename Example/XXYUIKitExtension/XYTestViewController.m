//
//  XYTestViewController.m
//  XXYUIKitExtension_Example
//
//  Created by 许须耀 on 2021/1/1.
//  Copyright © 2021 JasonDraem. All rights reserved.
//

#import "XYTestViewController.h"
#import <XXYUIKitExtension/XYUIKitExtensionHeader.h>
#import <Masonry/Masonry.h>

@interface XYTestViewController ()

@end

@implementation XYTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self test];
}

- (void)test {
    self.view.backgroundColor = [UIColor whiteColor];
    XYUILabel *lab = [[XYUIKitExtension shareInstance] createWithString:@"Test nisisi" textColor:[UIColor xyRedColor_eb414a] fontValue:15.0];
    [self.view addSubview:lab];
    [lab mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.equalTo(self.view);
        make.centerX.centerY.mas_equalTo(self.view);
    }];
    //
    [lab changeWordSpaceWithSpace:20];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
