//
//  ASPopover.h
//  PopoverObjC
//
//  Created by Assuner on 2017/10/23.
//

#import <UIKit/UIKit.h>
#import "ASPopoverOption.h"

typedef void (^ASPopoverBlock)(void);

@interface ASPopover : UIView

@property (nonatomic, copy) ASPopoverBlock willShowHandler;
@property (nonatomic, copy) ASPopoverBlock willDismissHandler;
@property (nonatomic, copy) ASPopoverBlock didShowHandler;
@property (nonatomic, copy) ASPopoverBlock didDismissHandler;

@property (nonatomic, strong) ASPopoverOption *option;

- (instancetype)initWithOption:(ASPopoverOption *)option;

- (void)dismiss;

- (void)show:(UIView *)contentView fromView:(UIView *)fromView;
- (void)show:(UIView *)contentView fromView:(UIView *)fromView inView:(UIView *)inView;
- (void)show:(UIView *)contentView atPoint:(CGPoint)point;
- (void)show:(UIView *)contentView atPoint:(CGPoint)point inView:(UIView *)inView;

- (CGPoint)originArrowPointWithView:(UIView *)contentView fromView:(UIView *)fromView;
- (CGPoint)arrowPointWithView:(UIView *)contentView fromView:(UIView *)fromView inView:(UIView *)inView popoverType:(ASPopoverType)type;

@end
