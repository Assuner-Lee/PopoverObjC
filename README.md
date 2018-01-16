![](https://github.com/Assuner-Lee/resource/blob/master/popoverobjc.png)
#### Objc version of Popover (https://github.com/corin8823/Popover)

[![CI Status](http://img.shields.io/travis/Assuner-Lee/PopoverObjC.svg?style=flat)](https://travis-ci.org/Assuner-Lee/PopoverObjC)
[![Version](https://img.shields.io/cocoapods/v/PopoverObjC.svg?style=flat)](http://cocoapods.org/pods/PopoverObjC)
[![License](https://img.shields.io/cocoapods/l/PopoverObjC.svg?style=flat)](http://cocoapods.org/pods/PopoverObjC)
[![Platform](https://img.shields.io/cocoapods/p/PopoverObjC.svg?style=flat)](http://cocoapods.org/pods/PopoverObjC)

## Example
<div align=left>
<img src="https://github.com/Assuner-Lee/resource/blob/master/popover.gif" width="375" height="667" alt="exmple"/>
</div>

```
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
    option.autoAjustDirection = YES;
    option.preferedType = ASPopoverTypeDown; // set prefered derection when autoAjustDirection = YES;
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
option.autoAjustDirection = YES;
option.arrowSize = CGSizeMake(10, 6);
option.offset = 3;  // vertical offset from original show point, default is 0.
option.blackOverlayColor = [UIColor clearColor];
option.sideEdge = 7;
option.dismissOnBlackOverlayTap = YES;
option.popoverColor = [[UIColor blackColor] colorWithAlphaComponent:0.7];
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
UIView *itemView = [self.navigationItem.rightBarButtonItem valueForKey:@"view"]; // you should use custom view in item;
if (itemView) {
[self.itemPopover show:view fromView:itemView]; // above, option has contained offset value; invoke [self show:contentView fromView:fromView inView:keyWindow];

/* other method to show

CGPoint orignPoint = [self.itemPopover orignArrowPointWithView:view fromView:itemView];
orignPoint.y += 5; // offset in option has same effect
[self.itemPopover show:view atPoint:orignPoint];

*/
}
@end

```

## Requirements

## Installation

PopoverObjC is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'PopoverObjC'
```

## Author

Assuner-Lee, assuner@foxmail.com

## License

PopoverObjC is available under the MIT license. See the LICENSE file for more info.
