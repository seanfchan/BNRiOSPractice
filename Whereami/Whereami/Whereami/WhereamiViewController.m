//
//  WhereamiViewController.m
//  Whereami
//
//  Created by Madiha Mubin on 8/26/12.
//  Copyright (c) 2012 Sean Chan. All rights reserved.
//

#import "WhereamiViewController.h"

@interface WhereamiViewController ()

@end

@implementation WhereamiViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  
  if (self)
  {
    locationManager = [[CLLocationManager alloc] init];
    mapView = [[MKMapView alloc] init];
    
    [locationManager setDelegate:self];
    [locationManager setDesiredAccuracy:50];
    [locationManager startUpdatingLocation];
    
    [mapView setDelegate:self];
  }

  return self;
}

- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation
{
  NSLog(@"%@", newLocation);
}

- (void)locationManager:(CLLocationManager *)manager
       didFailWithError:(NSError *)error
{
  NSLog(@"Could not find location: %@", error);
}

- (void)dealloc
{
  [locationManager setDelegate:nil];
}

- (BOOL)locationManagerShouldDisplayHeadingCalibration:(CLLocationManager *)manager
{
  return YES;
}

- (void)locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading
{
  NSLog(@"%@", newHeading);
}

@end
