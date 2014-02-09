//
//  HalfRoundCornerView.h
//  HalfCorner
//
//  Created by lieyunye on 2/9/14.
//  Copyright (c) 2014 lieyunye. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_OPTIONS(NSUInteger, HalfRoundedCorner) {
    HalfRoundedCornerBottomRight,
    HalfRoundedCornerBottomLeft,
};

@interface HalfRoundCornerView : UIView
@property (nonatomic, assign) HalfRoundedCorner halfRoundedCorner;
@property (nonatomic, strong) UIColor *fillColor;
@property (nonatomic, assign) CGFloat cornerRadius;
@end
