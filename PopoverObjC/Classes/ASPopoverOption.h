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

@property (nonatomic, assign) CGSize arrowSize; // default is (10, 7)
@property (nonatomic, assign) CGFloat offset; // vertical offset from original show point, default is 0.
@property (nonatomic, strong) UIColor *popoverColor;  // contain view color. including arrow.

@property (nonatomic, assign) BOOL autoAjustDirection; //effect just in view not at point; default is YES.
@property (nonatomic, assign) ASPopoverType preferedType; // just effect when autoAjustDirection = YES; default is ASPopoverTypeUp;
@property (nonatomic, assign) ASPopoverType popoverType; // default is ASPopoverTypeUp; not effect when autoAjustDirection = YES;

@property (nonatomic, assign) NSTimeInterval animationIn; // if 0, no animation; default is 0.6.
@property (nonatomic, assign) NSTimeInterval animationOut; // if 0, no animation; default is 0.3.
@property (nonatomic, assign) CGFloat springDamping;
@property (nonatomic, assign) CGFloat initialSpringVelocity;

@property (nonatomic, assign) CGFloat cornerRadius;
@property (nonatomic, assign) CGFloat sideEdge;
@property (nonatomic, strong) UIColor *blackOverlayColor; // default is black/alpha 0.2, can be clear color.
@property (nonatomic, strong) UIBlurEffect *overlayBlur;

@property (nonatomic, assign) BOOL dismissOnBlackOverlayTap; // default is YES.
@property (nonatomic, assign) BOOL showBlackOverlay; // default is YES.

@property (nonatomic, assign) BOOL highlightFromView;
@property (nonatomic, assign) CGFloat highlightCornerRadius;

@end
