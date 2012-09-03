//
//  HypnosisViewController.m
//  HypnoTime
//
//  Created by Madiha Mubin on 9/3/12.
//  Copyright (c) 2012 Sean Chan. All rights reserved.
//

#import "HypnosisViewController.h"
#import "HypnosisView.h"

@implementation HypnosisViewController

- (void)loadView
{
  CGRect frame = [[UIScreen mainScreen] bounds];
  HypnosisView *view = [[HypnosisView alloc] initWithFrame:frame];
  
  [self setView:view];
}

@end
