//
//  ViewController.m
//  Test_delegate
//
//  Created by 鹏 刘 on 16/9/20.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,strong) UILabel *label;
@property (nonatomic,strong) UIButton *button;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(100, 75, 105, 80)];
    self.label.backgroundColor = [UIColor greenColor];
        
    self.button = [[UIButton alloc] initWithFrame:CGRectMake(250, 200, 95, 65)];
    self.button.backgroundColor = [UIColor blackColor];
    [self.button setTitle:@"pass" forState:UIControlStateNormal];
    [self.button addTarget:self action:@selector(change:) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:self.label];
    [self.view addSubview:self.button];
}

- (IBAction)change:(id)sender
{
    SecondViewController *svc = [[SecondViewController alloc] initWithNibName:nil bundle:nil];
    
   
    [self.navigationController pushViewController:svc animated:YES];
}

- (void)secondLabelText:(NSString *)text
{
    
    self.label.text = text;
}


@end
