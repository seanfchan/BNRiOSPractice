//
//  SPLMapPoint.m
//  Whereami
//
//  Created by Madiha Mubin on 8/27/12.
//  Copyright (c) 2012 Sean Chan. All rights reserved.
//

#import "SPLMapPoint.h"

@implementation SPLMapPoint

@synthesize coordinate;
@synthesize title;

- (id)init
{
  return [self initWithCoordinate:CLLocationCoordinate2DMake(43.07, -89.32) title:@"Hometown"];
}

- (id)initWithCoordinate:(CLLocationCoordinate2D)c title:(NSString *)t
{
  self = [super init];
  
  if (self)
  {
    coordinate = c;
    title = t;
  }
  
  return self;
}

@end
