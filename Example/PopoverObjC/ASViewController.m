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
@property (nonatomic, strong) ASPopover *btnPopover;
@property (nonatomic, strong) ASPopover *itemPopover;

@end

@implementation ASViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  [self.btn addTarget:self action:@selector(clickBtn:) forControlEvents:UIControlEventTouchUpInside];
  
  self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"item" style:UIBarButtonItemStylePlain target:self action:@selector(clickItem:)];
}

- (void)didReceiveMemoryWarning {
}

- (ASPopover *)btnPopover {
  if (!_btnPopover) {
    ASPopoverOption *option = [[ASPopoverOption alloc] init];
    option.popoverType = ASPopoverTypeUp;
    option.autoAjustDirection = NO;
    option.arrowSize = CGSizeMake(9, 6);
    option.blackOverlayColor = [UIColor clearColor];
    option.popoverColor = [UIColor lightGrayColor];
    option.dismissOnBlackOverlayTap = YES;
    option.animationIn = 0.5;
    //...
    
    _btnPopover = [[ASPopover alloc] initWithOption:option];
  }
  return _btnPopover;
}


- (ASPopover *)itemPopover {
  if (!_itemPopover) {
    ASPopoverOption *option = [[ASPopoverOption alloc] init];
    option.autoAjustDirection = NO;
    option.arrowSize = CGSizeMake(10, 6);
    option.blackOverlayColor = [UIColor clearColor];
    option.sideEdge = 7;
    option.dismissOnBlackOverlayTap = YES;
    option.popoverColor = [[UIColor blackColor] colorWithAlphaComponent:0.7];
    option.autoAjustDirection = YES;
    option.animationIn = 0.4;
    option.springDamping = 0.5;
    option.initialSpringVelocity = 1;
    option.overlayBlur = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    //...
    
    _itemPopover = [[ASPopover alloc] initWithOption:option];
  }
  return _itemPopover;
}

- (void)clickBtn:(id)sender {
  UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width - 50, 40)];
  [self.btnPopover show:view fromView:self.btn];  // in delegate window
}

- (void)clickItem:(id)sender {
  UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 200)];
  UIView *itemView = [self.navigationItem.rightBarButtonItem valueForKey:@"view"]; // you should use custome view in item;
  if (itemView) {
//    [self.itemPopover show:view fromView:itemView];
    CGPoint orignPoint = [self.itemPopover originArrowPointWithView:view fromView:itemView];
    orignPoint.y += 5;
    [self.itemPopover show:view atPoint:orignPoint];
  }
}
@end
