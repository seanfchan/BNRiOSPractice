//
//  HypnosisView.m
//  Hypnosister
//
//  Created by Madiha Mubin on 8/29/12.
//  Copyright (c) 2012 Sean Chan. All rights reserved.
//

#import "HypnosisView.h"

@implementation HypnosisView

- (id)initWithFrame:(CGRect)frame
{
  self = [super initWithFrame:frame];
  if (self) {
    [self setBackgroundColor:[UIColor clearColor]];
  }
  
  return self;
}

- (void)drawRect:(CGRect)dirtyRect
{
  CGContextRef ctx = UIGraphicsGetCurrentContext();
  CGRect bounds = [self bounds];
  
  CGPoint center;
  center.x = bounds.origin.x + bounds.size.width / 2.0;
  center.y = bounds.origin.y + bounds.size.height / 2.0;
  
  float maxRadius = hypot(bounds.size.width, bounds.size.height) / 2.0;
  
  CGContextSetLineWidth(ctx, 10);
  
  for (float currentRadius = maxRadius; currentRadius > 0; currentRadius -= 20)
  {
    
    [[UIColor colorWithRed:0.6 green:0.7 blue:0.4 alpha:1] setStroke];
    
    CGContextAddArc(ctx, center.x, center.y, currentRadius, 0.0, M_PI, YES);
    
    CGContextStrokePath(ctx);
    
    CGContextSetRGBStrokeColor(ctx, 0.6, 0.9, 0.2, 1.0);
    
    CGContextAddArc(ctx, center.x, center.y, currentRadius, M_PI, M_PI * 2.0, YES);
    
    CGContextStrokePath(ctx);
  }
  
  NSString *text = @"You are getting sleepy.";
  
  UIFont *font = [UIFont boldSystemFontOfSize:28];
  
  CGRect textRect;
  
  textRect.size = [text sizeWithFont:font];
  
  textRect.origin.x = center.x - textRect.size.width / 2.0;
  textRect.origin.y = center.y - textRect.size.height / 2.0;
  
  [[UIColor blackColor] setFill];
  
  CGSize offset = CGSizeMake(4, 3);
  
  CGColorRef color = [[UIColor darkGrayColor] CGColor];
  
  CGContextSetShadowWithColor(ctx, offset, 2.0, color);
  
  [text drawInRect:textRect withFont:font];
}

@end
