//
//  HalfRoundCornerView.m
//  HalfCorner
//
//  Created by lieyunye on 2/9/14.
//  Copyright (c) 2014 lieyunye. All rights reserved.
//

#import "HalfRoundCornerView.h"

@implementation HalfRoundCornerView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(ctx, _fillColor.CGColor);
    [self addPathToContext:ctx inRect:self.bounds];
    CGContextClosePath(ctx);
    CGContextDrawPath(ctx, kCGPathFill);
    CGContextDrawPath(ctx, kCGPathStroke);
}

- (void)addPathToContext:(CGContextRef)ctx inRect:(CGRect)rect
{
    
    CGFloat minx = CGRectGetMinX(rect);
    CGFloat midx = CGRectGetMidX(rect);
    CGFloat maxx = CGRectGetMaxX(rect);
    
    CGFloat miny = CGRectGetMinY(rect);
    CGFloat midy = CGRectGetMidY(rect);
    CGFloat maxy = CGRectGetMaxY(rect);
    
    
    CGContextMoveToPoint(ctx, minx, midy);
    
    if (_halfRoundedCorner == HalfRoundedCornerBottomLeft) {
        /* Top Left Corner */
        
        CGContextAddArcToPoint(ctx, minx, miny, midx, miny, _cornerRadius);
        CGContextAddLineToPoint(ctx, midx, miny);
        
        /* Top right Corner */
        
        CGContextAddArcToPoint(ctx, maxx, miny, maxx, midy, 0);
        CGContextAddLineToPoint(ctx, maxx, midy);
        
        /* bottom right Corner */
        
        CGContextAddArcToPoint(ctx, maxx, maxy, midx, maxy, 0);
        CGContextAddLineToPoint(ctx, midx, maxy);
        
        /* bottom Left Corner */
        
        CGContextAddArcToPoint(ctx, minx, maxy, minx, midy, _cornerRadius);
        CGContextAddLineToPoint(ctx, minx, midy);
        
    }else {
        /* Top Left Corner */
        
        CGContextAddArcToPoint(ctx, minx, miny, midx, miny, 0);
        CGContextAddLineToPoint(ctx, midx, miny);
        
        /* Top right Corner */
        
        CGContextAddArcToPoint(ctx, maxx, miny, maxx, midy, _cornerRadius);
        CGContextAddLineToPoint(ctx, maxx, midy);
        
        /* bottom right Corner */
        
        CGContextAddArcToPoint(ctx, maxx, maxy, midx, maxy, _cornerRadius);
        CGContextAddLineToPoint(ctx, midx, maxy);

        /* bottom Left Corner */
        
        CGContextAddArcToPoint(ctx, minx, maxy, minx, midy, 0);
        CGContextAddLineToPoint(ctx, minx, midy);

    }
}

- (void)setFillColor:(UIColor *)fillColor{
    if (_fillColor != fillColor) {
        _fillColor = fillColor;
        [self setNeedsDisplay];
    }
}

- (void)setCornerRadius:(CGFloat)cornerRadius{
    _cornerRadius = cornerRadius;
    [self setNeedsDisplay];
}


@end
