//
//  ViewController.m
//  DropdownMenu
//
//  Created by LiMingjie on 16/1/26.
//  Copyright © 2016年 iOS开发者公会. All rights reserved.
//

#import "ViewController.h"


#import "YTQDropdownMenu.h"

@interface ViewController () <YTQDropdownMenuDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor lightGrayColor];
    
    
    YTQDropdownMenu * dropdownMenu = [[YTQDropdownMenu alloc] init];
    [dropdownMenu setFrame:CGRectMake(20, 80, 100, 40)];
    [dropdownMenu setMenuTitles:@[@"选项一",@"选项二",@"选项三",@"选项四"] rowHeight:30];
    dropdownMenu.delegate = self;
    [self.view addSubview:dropdownMenu];
}

#pragma mark - YTQDropdownMenu Delegate

- (void)dropdownMenu:(YTQDropdownMenu *)menu selectedCellNumber:(NSInteger)number{
    NSLog(@"你选择了：%ld",number);
}

- (void)dropdownMenuWillShow:(YTQDropdownMenu *)menu{
    NSLog(@"--将要显示--");
}
- (void)dropdownMenuDidShow:(YTQDropdownMenu *)menu{
    NSLog(@"--已经显示--");
}

- (void)dropdownMenuWillHidden:(YTQDropdownMenu *)menu{
    NSLog(@"--将要隐藏--");
}
- (void)dropdownMenuDidHidden:(YTQDropdownMenu *)menu{
    NSLog(@"--已经隐藏--");
}

@end
