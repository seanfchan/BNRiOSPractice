//
//  ScrollViewTestViewController.m
//  ScrollViewTest
//
//  Created by Madiha Mubin on 8/28/12.
//  Copyright (c) 2012 Sean Chan. All rights reserved.
//

#import "ScrollViewTestViewController.h"

@interface ScrollViewTestViewController ()

@end

@implementation ScrollViewTestViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
