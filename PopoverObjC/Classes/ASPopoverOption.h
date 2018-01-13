//
//  ASPopoverOption.h
//  PopoverObjC
//
//  Created by Assuner on 2017/10/23.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, ASPopoverType) {
  ASPopoverTypeUp = 0,
  ASPopoverTypeDown,
};

@interface ASPopoverOption : NSObject

@property (nonatomic, assign) CGSize arrowSize;
@property (nonatomic, assign) CGFloat offset; // vertical offset from original show point, default is 0.
@property (nonatomic, assign) NSTimeInterval animationIn; // if 0, no animation
@property (nonatomic, assign) NSTimeInterval animationOut;
@property (nonatomic, assign) CGFloat cornerRadius;
@property (nonatomic, assign) CGFloat sideEdge;
@property (nonatomic, strong) UIColor *blackOverlayColor;
@property (nonatomic, strong) UIBlurEffect *overlayBlur;
@property (nonatomic, strong) UIColor *popoverColor;
@property (nonatomic, assign) BOOL dismissOnBlackOverlayTap;
@property (nonatomic, assign) BOOL showBlackOverlay;
@property (nonatomic, assign) CGFloat springDamping;
@property (nonatomic, assign) CGFloat initialSpringVelocity;
@property (nonatomic, assign) ASPopoverType popoverType;
@property (nonatomic, assign) BOOL highlightFromView;
@property (nonatomic, assign) CGFloat highlightCornerRadius;
@property (nonatomic, assign) BOOL autoAjustDirection; // down preferred, effect just in view not at point

@end
