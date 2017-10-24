//
//  ASPopoverOption.m
//  PopoverObjC
//
//  Created by Assuner on 2017/10/23.
//

#import "ASPopoverOption.h"

@implementation ASPopoverOption

- (instancetype)init {
  if (self = [super init]) {
    _arrowSize = CGSizeMake(10, 7);
    _animationIn = 0.6;
    _animationOut = 0.3;
    _cornerRadius = 2.0;
    _sideEdge = 20.0;
    _popoverType = ASPopoverTypeDown;
    _blackOverlayColor = [[UIColor blackColor] colorWithAlphaComponent:0.2];
    _popoverColor = [UIColor lightGrayColor];
    _dismissOnBlackOverlayTap = YES;
    _showBlackOverlay = YES;
    _springDamping = 0.7;
    _initialSpringVelocity = 3.0;
    _highlightFromView = NO;
    _highlightCornerRadius = 0.0;
    _autoAjustDirection = NO;
  }
  return self;
}

@end
