//
//  ASViewController.m
//  PopoverObjC
//
//  Created by Assuner-Lee on 10/23/2017.
//  Copyright (c) 2017 Assuner-Lee. All rights reserved.
//

#import "ASViewController.h"
#import <PopoverObjC/ASPopover.h>

@interface ASViewController ()

@property (weak, nonatomic) IBOutlet UIButton *btn;
@property (nonatomic, strong) ASPopover *popover;

@end

@implementation ASViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  ASPopoverOption *option = [[ASPopoverOption alloc] init];
  option.popoverType = ASPopoverTypeUp;
  option.autoAjustDirection = NO;
  option.arrowSize = CGSizeMake(9, 6);
  option.blackOverlayColor = [UIColor clearColor];
  option.dismissOnBlackOverlayTap = YES;
  option.animationIn = 0.5;
  //...
  
  _popover = [[ASPopover alloc] initWithOption:option];
  [self.btn addTarget:self action:@selector(click:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
}


- (IBAction)click:(id)sender {
  UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width - 50, 40)];
  [_popover show:view fromView:self.btn];
}
@end
