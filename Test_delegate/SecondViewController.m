//
//  SecondViewController.m
//  Test_delegate
//
//  Created by 鹏 刘 on 16/9/20.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UIButton *button;
@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
   
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(100, 120, 100, 89)];
    self.label.backgroundColor = [UIColor greenColor];
    self.label.text = @"wo ai ni !";
    
    self.button = [[UIButton alloc] initWithFrame:CGRectMake(200, 120, 100, 100)];
    self.button.backgroundColor = [UIColor blackColor];
    [self.button setTitle:@"push" forState:UIControlStateNormal];
    [self.button addTarget:self action:@selector(gotoFirstView:) forControlEvents:UIControlEventTouchDown];
    
    
    [self.view addSubview:self.label];
    [self.view addSubview:self.button];

}

- (IBAction)gotoFirstView:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];

    [self.delegate secondLabelText:self.label.text];
    
}




@end
