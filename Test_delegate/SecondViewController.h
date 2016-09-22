//
//  SecondViewController.h
//  Test_delegate
//
//  Created by 鹏 刘 on 16/9/20.
//  Copyright © 2016年 鹏 刘. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol SecondLabelTextDelegate 

- (void)secondLabelText:(NSString *)text;
@end

@interface SecondViewController : UIViewController
@property (nonatomic,weak) id <SecondLabelTextDelegate> delegate;

@end
