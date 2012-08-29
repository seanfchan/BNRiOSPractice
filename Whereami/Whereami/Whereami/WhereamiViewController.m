//
//  WhereamiViewController.m
//  Whereami
//
//  Created by Madiha Mubin on 8/26/12.
//  Copyright (c) 2012 Sean Chan. All rights reserved.
//

#import "WhereamiViewController.h"
#import "SPLMapPoint.h"

@interface WhereamiViewController ()

@end

@implementation WhereamiViewController

@synthesize mapView;

- (void)viewDidLoad
{
  [mapView setShowsUserLocation:YES];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
  self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
  
  if (self)
  {
    locationManager = [[CLLocationManager alloc] init];
    mapView = [[MKMapView alloc] init];
    
    [locationManager setDelegate:self];
    [locationManager setDesiredAccuracy:50];
    
    [mapView setDelegate:self];
  }

  return self;
}

- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation
{
  NSLog(@"%@", newLocation);
  
  NSTimeInterval t = [[newLocation timestamp] timeIntervalSinceNow];
  
  if (t < -180)
  {
    return;
  }
  
  [self foundLocation:newLocation];
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

- (void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation
{
  CLLocationCoordinate2D loc = [userLocation coordinate];
  MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(loc, 250, 250);
  [self.mapView setRegion:region animated:YES];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
  [self findLocation];
  
  [textField resignFirstResponder];
  
  return YES;
}

- (void)findLocation
{
  [locationManager startUpdatingLocation];
  [activityIndicator startAnimating];
  [locationTitleField setHidden:YES];
}

- (void)foundLocation:(CLLocation *)loc
{
  CLLocationCoordinate2D coord = [loc coordinate];
  
  SPLMapPoint *mp = [[SPLMapPoint alloc] initWithCoordinate:coord title:[locationTitleField text]];
  
  [mapView addAnnotation:mp];
  
  MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(coord, 250, 250);
  [mapView setRegion:region animated:YES];
  
  [locationTitleField setText:@""];
  [activityIndicator stopAnimating];
  [locationTitleField setHidden:NO];
  [locationManager stopUpdatingLocation];
}

@end
