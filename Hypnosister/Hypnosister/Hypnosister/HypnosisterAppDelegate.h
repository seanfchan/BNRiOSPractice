//
//  HypnosisterAppDelegate.h
//  Hypnosister
//
//  Created by Madiha Mubin on 8/28/12.
//  Copyright (c) 2012 Sean Chan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HypnosisView.h"

@interface HypnosisterAppDelegate : UIResponder <UIApplicationDelegate, UIScrollViewDelegate>
{
  HypnosisView *view;
}
@property (strong, nonatomic) UIWindow *window;


@end
